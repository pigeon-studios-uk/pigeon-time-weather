--[[
    Pigeon Time and Weather: Spanish (Español).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'es'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.es = {
    title = 'Hora y clima',
    no_permission = 'No tienes permiso para hacer eso.',
    time_usage = 'Usa /{command} horas [minutos], por ejemplo /{command} 14 30.',
    time_set = 'Hora cambiada a {time}.',
    real_time = 'La hora sigue el reloj del servidor, así que no se puede cambiar aquí.',
    weather_usage = 'Usa /{command} y uno de: {list}.',
    weather_set = 'El clima cambia a {weather}.',
    time_frozen = 'Hora detenida en {time}.',
    time_running = 'La hora vuelve a correr desde {time}.',
    weather_frozen = 'El clima se queda como está.',
    weather_running = 'El clima vuelve a cambiar solo.',
    blackout_on = 'Apagón activado.',
    blackout_off = 'Apagón desactivado.',
}
