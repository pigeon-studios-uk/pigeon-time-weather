--[[
    Pigeon Time and Weather: client.

    Follows the server's clock and weather from GlobalState: sets the clock every second, changes the weather
    smoothly over Config.TransitionSeconds when it changes, and turns the city's lights off in a blackout.
    Leaves time or weather alone when the server says vMenu is syncing it.
]]

local SNOWY = { XMAS = true, SNOW = true, SNOWLIGHT = true, BLIZZARD = true, SNOW_HALLOWEEN = true }

local applied                   -- the weather this game last changed to
local blackout

local function quiet(part)
    local value = GlobalState.pigeonQuiet
    return value and value[part] == true
end

local function applyWeather(state, instant)
    if quiet('weather') or not state then return end
    local name = state.weather
    if name ~= applied then
        ClearOverrideWeather()
        ClearWeatherTypePersist()
        if instant or not applied then
            SetWeatherTypeNowPersist(name)
        else
            SetWeatherTypeOvertimePersist(name, Config.TransitionSeconds + 0.0)
        end
        SetWeatherTypePersist(name)
        SetOverrideWeather(name)
        local snow = SNOWY[name] or false
        SetForceVehicleTrails(snow)
        SetForcePedFootstepsTracks(snow)
        applied = name
    end
    if state.blackout ~= blackout then
        blackout = state.blackout
        SetArtificialLightsState(blackout)
        SetArtificialLightsStateAffectsVehicles(not Config.BlackoutVehicleLights)
    end
end

AddStateBagChangeHandler('pigeonWeather', 'global', function(_, _, value)
    applyWeather(value, false)
end)

CreateThread(function()
    applyWeather(GlobalState.pigeonWeather, true)
    while true do
        local clock = GlobalState.pigeonClock
        if clock and not quiet('time') then
            NetworkOverrideClockTime(clock.hour, clock.minute, 0)
        end
        -- Some resources and cutscenes change the weather; put it back.
        if not quiet('weather') and applied and GlobalState.pigeonWeather and GlobalState.pigeonWeather.weather ~= applied then
            applyWeather(GlobalState.pigeonWeather, false)
        end
        Wait(1000)
    end
end)
