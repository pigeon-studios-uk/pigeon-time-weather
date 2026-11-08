--[[
    Pigeon Time and Weather: Dutch (Nederlands).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'nl'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.nl = {
    title = 'Tijd en weer',
    no_permission = 'Daar heb je geen toestemming voor.',
    time_usage = 'Gebruik /{command} uren [minuten], bijv. /{command} 14 30.',
    time_set = 'Tijd ingesteld op {time}.',
    real_time = 'De tijd volgt de klok van de server en kan hier niet worden aangepast.',
    weather_usage = 'Gebruik /{command} en een van: {list}.',
    weather_set = 'Het weer verandert naar {weather}.',
    time_frozen = 'Tijd stilgezet op {time}.',
    time_running = 'Tijd loopt weer vanaf {time}.',
    weather_frozen = 'Het weer blijft zoals het is.',
    weather_running = 'Het weer verandert weer vanzelf.',
    blackout_on = 'Stroomuitval aan.',
    blackout_off = 'Stroomuitval uit.',
}
