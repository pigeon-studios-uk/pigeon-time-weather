--[[
    Pigeon Time and Weather: Estonian (Eesti).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'et'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.et = {
    title = 'Aeg ja ilm',
    no_permission = 'Sul pole selleks õigust.',
    time_usage = 'Kasuta /{command} tunnid [minutid], näiteks /{command} 14 30.',
    time_set = 'Aeg seatud: {time}.',
    real_time = 'Aeg järgib serveri kella, seega seda siin muuta ei saa.',
    weather_usage = 'Kasuta /{command} ja üht neist: {list}.',
    weather_set = 'Ilm muutub: {weather}.',
    time_frozen = 'Aeg peatatud kell {time}.',
    time_running = 'Aeg jookseb jälle alates {time}.',
    weather_frozen = 'Ilm jääb samaks.',
    weather_running = 'Ilm muutub jälle ise.',
    blackout_on = 'Elektrikatkestus sees.',
    blackout_off = 'Elektrikatkestus väljas.',
}
