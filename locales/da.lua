--[[
    Pigeon Time and Weather: Danish (Dansk).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'da'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.da = {
    title = 'Tid og vejr',
    no_permission = 'Det har du ikke tilladelse til.',
    time_usage = 'Brug /{command} timer [minutter], f.eks. /{command} 14 30.',
    time_set = 'Tiden er sat til {time}.',
    real_time = 'Tiden følger serverens ur, så den kan ikke ændres her.',
    weather_usage = 'Brug /{command} og en af: {list}.',
    weather_set = 'Vejret skifter til {weather}.',
    time_frozen = 'Tiden stoppet ved {time}.',
    time_running = 'Tiden kører igen fra {time}.',
    weather_frozen = 'Vejret bliver, som det er.',
    weather_running = 'Vejret skifter af sig selv igen.',
    blackout_on = 'Strømafbrydelse til.',
    blackout_off = 'Strømafbrydelse fra.',
}
