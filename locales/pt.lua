--[[
    Pigeon Time and Weather: Portuguese (Português).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'pt'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.pt = {
    title = 'Hora e tempo',
    no_permission = 'Não tens permissão para fazer isso.',
    time_usage = 'Usa /{command} horas [minutos], por exemplo /{command} 14 30.',
    time_set = 'Hora definida para {time}.',
    real_time = 'A hora segue o relógio do servidor, por isso não pode ser mudada aqui.',
    weather_usage = 'Usa /{command} e um de: {list}.',
    weather_set = 'O tempo muda para {weather}.',
    time_frozen = 'Hora parada às {time}.',
    time_running = 'A hora volta a correr a partir das {time}.',
    weather_frozen = 'O tempo fica como está.',
    weather_running = 'O tempo volta a mudar sozinho.',
    blackout_on = 'Apagão ligado.',
    blackout_off = 'Apagão desligado.',
}
