--[[
    Pigeon Time and Weather: English.

    To translate, copy this file to a new one named with the language's code (such as de.lua or pt-br.lua),
    change `Locales.en` to match (Locales.de), translate the text in quotes, and set Config.Locale.
    Keep words in {curly brackets} and ~GTA codes~ exactly as they are; they're filled in automatically.
]]

Locales = Locales or {}

Locales.en = {
    -- Shown before each message in chat.
    title = 'Time and weather',
    -- A player without permission used a staff command.
    no_permission = 'You don\'t have permission to do that.',
    -- {command} is the command name.
    time_usage = 'Use /{command} hours [minutes], such as /{command} 14 30.',
    -- {time} is like 14:30.
    time_set = 'Time set to {time}.',
    -- With Config.RealTime on.
    real_time = 'The time follows the server\'s clock, so it can\'t be changed here.',
    -- {command} is the command name, {list} the weather names, kept in English.
    weather_usage = 'Use /{command} and one of: {list}.',
    -- {weather} is the weather's GTA name, kept in English.
    weather_set = 'Weather changing to {weather}.',
    -- {time} is like 14:30.
    time_frozen = 'Time stopped at {time}.',
    -- {time} is like 14:30.
    time_running = 'Time running again from {time}.',
    -- After /freezeweather.
    weather_frozen = 'Weather stays as it is.',
    -- After /freezeweather again.
    weather_running = 'Weather changes by itself again.',
    -- After /blackout.
    blackout_on = 'Blackout on.',
    -- After /blackout again.
    blackout_off = 'Blackout off.',
}
