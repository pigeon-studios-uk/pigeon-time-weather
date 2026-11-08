--[[
    Pigeon Time and Weather: Italian (Italiano).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'it'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.it = {
    title = 'Ora e meteo',
    no_permission = 'Non hai il permesso di farlo.',
    time_usage = 'Usa /{command} ore [minuti], ad esempio /{command} 14 30.',
    time_set = 'Ora impostata su {time}.',
    real_time = 'L\'ora segue l\'orologio del server, quindi non si può cambiare qui.',
    weather_usage = 'Usa /{command} e uno tra: {list}.',
    weather_set = 'Il meteo passa a {weather}.',
    time_frozen = 'Ora fermata alle {time}.',
    time_running = 'L\'ora riparte dalle {time}.',
    weather_frozen = 'Il meteo resta com\'è.',
    weather_running = 'Il meteo cambia di nuovo da solo.',
    blackout_on = 'Blackout attivo.',
    blackout_off = 'Blackout disattivato.',
}
