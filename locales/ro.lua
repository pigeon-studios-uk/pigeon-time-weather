--[[
    Pigeon Time and Weather: Romanian (Română).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'ro'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.ro = {
    title = 'Ora și vremea',
    no_permission = 'Nu ai permisiunea să faci asta.',
    time_usage = 'Folosește /{command} ore [minute], de exemplu /{command} 14 30.',
    time_set = 'Ora setată la {time}.',
    real_time = 'Ora urmează ceasul serverului, deci nu poate fi schimbată aici.',
    weather_usage = 'Folosește /{command} și una dintre: {list}.',
    weather_set = 'Vremea se schimbă în {weather}.',
    time_frozen = 'Timpul oprit la {time}.',
    time_running = 'Timpul curge din nou de la {time}.',
    weather_frozen = 'Vremea rămâne cum e.',
    weather_running = 'Vremea se schimbă din nou singură.',
    blackout_on = 'Pana de curent pornită.',
    blackout_off = 'Pana de curent oprită.',
}
