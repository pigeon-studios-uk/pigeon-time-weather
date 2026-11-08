--[[
    Pigeon Time and Weather: Swedish (Svenska).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'sv'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.sv = {
    title = 'Tid och väder',
    no_permission = 'Du har inte behörighet att göra det.',
    time_usage = 'Använd /{command} timmar [minuter], t.ex. /{command} 14 30.',
    time_set = 'Tiden satt till {time}.',
    real_time = 'Tiden följer serverns klocka, så den kan inte ändras här.',
    weather_usage = 'Använd /{command} och en av: {list}.',
    weather_set = 'Vädret ändras till {weather}.',
    time_frozen = 'Tiden stoppad vid {time}.',
    time_running = 'Tiden går igen från {time}.',
    weather_frozen = 'Vädret stannar som det är.',
    weather_running = 'Vädret ändras av sig självt igen.',
    blackout_on = 'Strömavbrott på.',
    blackout_off = 'Strömavbrott av.',
}
