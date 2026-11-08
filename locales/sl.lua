--[[
    Pigeon Time and Weather: Slovenian (Slovenščina).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'sl'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.sl = {
    title = 'Čas in vreme',
    no_permission = 'Za to nimaš dovoljenja.',
    time_usage = 'Uporabi /{command} ure [minute], npr. /{command} 14 30.',
    time_set = 'Čas nastavljen na {time}.',
    real_time = 'Čas sledi uri strežnika, zato ga tukaj ni mogoče spremeniti.',
    weather_usage = 'Uporabi /{command} in eno od: {list}.',
    weather_set = 'Vreme se spreminja v {weather}.',
    time_frozen = 'Čas ustavljen ob {time}.',
    time_running = 'Čas spet teče od {time}.',
    weather_frozen = 'Vreme ostaja, kot je.',
    weather_running = 'Vreme se spet spreminja samo.',
    blackout_on = 'Izpad elektrike vklopljen.',
    blackout_off = 'Izpad elektrike izklopljen.',
}
