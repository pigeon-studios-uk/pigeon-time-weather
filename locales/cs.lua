--[[
    Pigeon Time and Weather: Czech (Čeština).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'cs'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.cs = {
    title = 'Čas a počasí',
    no_permission = 'Na to nemáš oprávnění.',
    time_usage = 'Použij /{command} hodiny [minuty], například /{command} 14 30.',
    time_set = 'Čas nastaven na {time}.',
    real_time = 'Čas se řídí hodinami serveru, takže ho tady nejde změnit.',
    weather_usage = 'Použij /{command} a jedno z: {list}.',
    weather_set = 'Počasí se mění na {weather}.',
    time_frozen = 'Čas zastaven na {time}.',
    time_running = 'Čas znovu běží od {time}.',
    weather_frozen = 'Počasí zůstává, jak je.',
    weather_running = 'Počasí se zase mění samo.',
    blackout_on = 'Výpadek proudu zapnut.',
    blackout_off = 'Výpadek proudu vypnut.',
}
