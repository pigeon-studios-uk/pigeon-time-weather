--[[
    Pigeon Time and Weather: Brazilian Portuguese (Português do Brasil).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'pt-br'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales['pt-br'] = {
    title = 'Hora e clima',
    no_permission = 'Você não tem permissão para fazer isso.',
    time_usage = 'Use /{command} horas [minutos], por exemplo /{command} 14 30.',
    time_set = 'Hora definida para {time}.',
    real_time = 'A hora segue o relógio do servidor, então não pode ser mudada aqui.',
    weather_usage = 'Use /{command} e um de: {list}.',
    weather_set = 'O clima muda para {weather}.',
    time_frozen = 'Hora parada às {time}.',
    time_running = 'A hora volta a correr a partir das {time}.',
    weather_frozen = 'O clima fica como está.',
    weather_running = 'O clima volta a mudar sozinho.',
    blackout_on = 'Apagão ligado.',
    blackout_off = 'Apagão desligado.',
}
