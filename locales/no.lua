--[[
    Pigeon Time and Weather: Norwegian (Norsk).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'no'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.no = {
    title = 'Tid og vær',
    no_permission = 'Du har ikke tillatelse til det.',
    time_usage = 'Bruk /{command} timer [minutter], f.eks. /{command} 14 30.',
    time_set = 'Tiden satt til {time}.',
    real_time = 'Tiden følger serverens klokke, så den kan ikke endres her.',
    weather_usage = 'Bruk /{command} og en av: {list}.',
    weather_set = 'Været skifter til {weather}.',
    time_frozen = 'Tiden stoppet på {time}.',
    time_running = 'Tiden går igjen fra {time}.',
    weather_frozen = 'Været blir som det er.',
    weather_running = 'Været skifter av seg selv igjen.',
    blackout_on = 'Strømbrudd på.',
    blackout_off = 'Strømbrudd av.',
}
