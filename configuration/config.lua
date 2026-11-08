Config = {}

-- Language for the messages staff see. 'auto' follows ox_lib's language (setr ox:locale "de" in
-- server.cfg) and is English when that isn't set. Or name a file from locales/, such as 'de' or 'pt-br'.
Config.Locale = 'auto'

-- The time when the server starts, and how many real seconds one game minute lasts. GTA's own is 2
-- (a 48-minute day). 0 keeps the clock where it is until staff change it.
Config.StartHour = 8
Config.StartMinute = 0
Config.MinuteSeconds = 2

-- Follow the real time on the server's computer instead (hours and minutes). Overrides the above.
Config.RealTime = false

-- The weather when the server starts.
Config.StartWeather = 'CLEAR'

-- Change the weather by itself every Config.WeatherMinutes real minutes, to one of the weathers that can
-- follow the current one in Config.Weathers.
Config.DynamicWeather = true
Config.WeatherMinutes = 30

-- Which weathers can follow each one. Pick one at random each change; list one twice to make it likelier.
-- Remove a weather from every list (and from the keys) to never have it.
Config.Weathers = {
    EXTRASUNNY = { 'EXTRASUNNY', 'CLEAR', 'CLEAR', 'CLOUDS' },
    CLEAR = { 'CLEAR', 'EXTRASUNNY', 'CLOUDS', 'SMOG' },
    CLOUDS = { 'CLOUDS', 'CLEAR', 'OVERCAST', 'SMOG' },
    SMOG = { 'SMOG', 'CLEAR', 'CLOUDS', 'FOGGY' },
    FOGGY = { 'FOGGY', 'SMOG', 'CLEAR' },
    OVERCAST = { 'OVERCAST', 'CLOUDS', 'RAIN', 'CLEARING' },
    RAIN = { 'RAIN', 'THUNDER', 'CLEARING' },
    THUNDER = { 'THUNDER', 'RAIN', 'CLEARING' },
    CLEARING = { 'CLEARING', 'CLEAR', 'CLOUDS' },
}

-- How long, in seconds, the weather takes to change from one to the next.
Config.TransitionSeconds = 30.0

-- Leave vehicle lights on in a blackout, so vehicles can still see.
Config.BlackoutVehicleLights = true

-- When vMenu's own time or weather sync is on (vmenu_enable_time_sync / vmenu_enable_weather_sync), let
-- vMenu do that part and keep quiet, so the two don't fight.
Config.RespectVMenu = true

-- Who can use the staff commands: anyone with one of these ACE permissions, and the server console.
--   'pigeon.timeweather'  give it to anyone:  add_ace group.moderator pigeon.timeweather allow
--   'command'             staff on most servers (txAdmin and the default server.cfg give it to admins)
Config.Permissions = { 'pigeon.timeweather', 'command' }

-- The command names.
Config.Commands = {
    time = 'time',                      -- /time 14 30
    weather = 'weather',                -- /weather rain
    freezeTime = 'freezetime',          -- stop or start the clock
    freezeWeather = 'freezeweather',    -- stop or start the weather changing by itself
    blackout = 'blackout',              -- turn the city's lights off or on
}

-- Update checks are controlled in server.cfg for every Pigeon Studios resource at once:
--     set pigeon_update_check "on"      (default)  |  "quiet"  |  "off"
