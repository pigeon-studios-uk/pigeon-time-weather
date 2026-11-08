--[[
    Pigeon Time and Weather: server.

    The server keeps the clock and the weather, and shares them with every player through two GlobalState
    entries, `pigeonClock` ({ hour, minute, frozen }) and `pigeonWeather` ({ weather, blackout, frozen }).
    Every player's game follows them, so everyone has the same time and weather. Staff change them with
    commands. When vMenu's own sync is on, the matching part is marked quiet and players' games leave it
    to vMenu.
]]

local VALID = {
    EXTRASUNNY = true, CLEAR = true, CLOUDS = true, OVERCAST = true, RAIN = true, CLEARING = true,
    THUNDER = true, SMOG = true, FOGGY = true, XMAS = true, SNOW = true, SNOWLIGHT = true, BLIZZARD = true,
    HALLOWEEN = true, NEUTRAL = true, RAIN_HALLOWEEN = true, SNOW_HALLOWEEN = true,
}

-- 'auto' follows ox_lib's language (the ox:locale convar), and English when that isn't set.
local locale = Config.Locale == 'auto' and GetConvar('ox:locale', 'en') or Config.Locale
local strings = Locales[locale] or Locales.en

local function t(key, values)
    local text = strings[key] or Locales.en[key] or key
    return (text:gsub('{(%w+)}', function(name)
        local value = values and values[name]
        return value ~= nil and tostring(value) or '{' .. name .. '}'
    end))
end

local clock = { hour = tonumber(Config.StartHour) or 8, minute = tonumber(Config.StartMinute) or 0, frozen = (tonumber(Config.MinuteSeconds) or 2) <= 0 }
local weather = { weather = VALID[Config.StartWeather] and Config.StartWeather or 'CLEAR', blackout = false, frozen = not Config.DynamicWeather }
local nextWeatherAt = GetGameTimer() + (tonumber(Config.WeatherMinutes) or 30) * 60000

local function shareClock() GlobalState.pigeonClock = { hour = clock.hour, minute = clock.minute, frozen = clock.frozen } end
local function shareWeather() GlobalState.pigeonWeather = { weather = weather.weather, blackout = weather.blackout, frozen = weather.frozen } end

---------------------------------------------------------------------------
-- vMenu

local function vMenuSync(convar)
    if not Config.RespectVMenu or GetResourceState('vMenu') ~= 'started' then return false end
    return GetConvar(convar, 'false') == 'true'
end

local function shareQuiet()
    local quiet = { time = vMenuSync('vmenu_enable_time_sync'), weather = vMenuSync('vmenu_enable_weather_sync') }
    local before = GlobalState.pigeonQuiet
    GlobalState.pigeonQuiet = quiet
    if (quiet.time or quiet.weather) and not (before and (before.time or before.weather)) then
        print(('[Pigeon Time and Weather] vMenu is syncing %s, so this resource leaves that to vMenu.')
            :format(quiet.time and quiet.weather and 'time and weather' or quiet.time and 'time' or 'weather'))
    end
end

---------------------------------------------------------------------------
-- The clock and the weather

local function realTime()
    local now = os.date('*t')
    clock.hour, clock.minute = now.hour, now.min
end

local function nextWeather()
    local choices = Config.Weathers and Config.Weathers[weather.weather]
    if not choices or #choices == 0 then return end
    local pick = choices[math.random(#choices)]
    if VALID[pick] then weather.weather = pick end
end

CreateThread(function()
    shareQuiet()
    if Config.RealTime then realTime() end
    shareClock()
    shareWeather()

    local minuteMs = math.max(100, (tonumber(Config.MinuteSeconds) or 2) * 1000)
    local nextMinuteAt = GetGameTimer() + minuteMs
    local nextQuietAt = GetGameTimer() + 30000
    while true do
        local now = GetGameTimer()
        if Config.RealTime then
            local hour, minute = clock.hour, clock.minute
            realTime()
            if hour ~= clock.hour or minute ~= clock.minute then shareClock() end
        elseif not clock.frozen and now >= nextMinuteAt then
            nextMinuteAt = now + minuteMs
            clock.minute = clock.minute + 1
            if clock.minute >= 60 then clock.minute, clock.hour = 0, (clock.hour + 1) % 24 end
            shareClock()
        elseif clock.frozen then
            nextMinuteAt = now + minuteMs
        end

        if not weather.frozen and now >= nextWeatherAt then
            nextWeatherAt = now + (tonumber(Config.WeatherMinutes) or 30) * 60000
            local before = weather.weather
            nextWeather()
            if weather.weather ~= before then shareWeather() end
        end

        if now >= nextQuietAt then
            nextQuietAt = now + 30000
            shareQuiet()
        end
        Wait(500)
    end
end)

---------------------------------------------------------------------------
-- Staff commands

local function allowed(src)
    if src == 0 then return true end
    for _, permission in ipairs(Config.Permissions or {}) do
        if IsPlayerAceAllowed(src, permission) then return true end
    end
    return false
end

local function reply(src, key, values)
    local text = t(key, values)
    if src == 0 then print('[Pigeon Time and Weather] ' .. text) return end
    TriggerClientEvent('chat:addMessage', src, { args = { strings.title or 'Time and weather', text } })
end

local function staffCommand(name, fn)
    RegisterCommand(name, function(src, args)
        if not allowed(src) then return reply(src, 'no_permission') end
        fn(src, args)
    end, false)
end

local function clockText() return ('%02d:%02d'):format(clock.hour, clock.minute) end

staffCommand(Config.Commands.time, function(src, args)
    local hour, minute = tonumber(args[1]), tonumber(args[2] or 0)
    if not hour or not minute or hour % 1 ~= 0 or minute % 1 ~= 0 or hour < 0 or hour > 23 or minute < 0 or minute > 59 then
        return reply(src, 'time_usage', { command = Config.Commands.time })
    end
    if Config.RealTime then return reply(src, 'real_time') end
    clock.hour, clock.minute = hour, minute
    shareClock()
    reply(src, 'time_set', { time = clockText() })
end)

staffCommand(Config.Commands.weather, function(src, args)
    local name = args[1] and args[1]:upper()
    if not name or not VALID[name] then
        local list = {}
        for key in pairs(VALID) do list[#list + 1] = key:lower() end
        table.sort(list)
        return reply(src, 'weather_usage', { command = Config.Commands.weather, list = table.concat(list, ', ') })
    end
    weather.weather = name
    nextWeatherAt = GetGameTimer() + (tonumber(Config.WeatherMinutes) or 30) * 60000
    shareWeather()
    reply(src, 'weather_set', { weather = name:lower() })
end)

staffCommand(Config.Commands.freezeTime, function(src)
    if Config.RealTime then return reply(src, 'real_time') end
    clock.frozen = not clock.frozen
    shareClock()
    reply(src, clock.frozen and 'time_frozen' or 'time_running', { time = clockText() })
end)

staffCommand(Config.Commands.freezeWeather, function(src)
    weather.frozen = not weather.frozen
    nextWeatherAt = GetGameTimer() + (tonumber(Config.WeatherMinutes) or 30) * 60000
    shareWeather()
    reply(src, weather.frozen and 'weather_frozen' or 'weather_running')
end)

staffCommand(Config.Commands.blackout, function(src)
    weather.blackout = not weather.blackout
    shareWeather()
    reply(src, weather.blackout and 'blackout_on' or 'blackout_off')
end)

---------------------------------------------------------------------------
-- Exports

--- The time as hour, minute.
exports('GetTime', function() return clock.hour, clock.minute end)

--- Set the time, for example for an event.
exports('SetTime', function(hour, minute)
    hour, minute = tonumber(hour), tonumber(minute or 0)
    if not hour or not minute or hour < 0 or hour > 23 or minute < 0 or minute > 59 then return false end
    clock.hour, clock.minute = math.floor(hour), math.floor(minute)
    shareClock()
    return true
end)

--- The current weather, such as 'CLEAR'.
exports('GetWeather', function() return weather.weather end)

--- Set the weather by its GTA name, such as 'RAIN'.
exports('SetWeather', function(name)
    name = type(name) == 'string' and name:upper()
    if not name or not VALID[name] then return false end
    weather.weather = name
    shareWeather()
    return true
end)

--- Turn the blackout on (true) or off (false).
exports('SetBlackout', function(value)
    weather.blackout = value and true or false
    shareWeather()
end)
