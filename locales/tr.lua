--[[
    Pigeon Time and Weather: Turkish (Türkçe).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'tr'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.tr = {
    title = 'Saat ve hava',
    no_permission = 'Bunu yapmaya yetkin yok.',
    time_usage = '/{command} saat [dakika] kullan, örneğin /{command} 14 30.',
    time_set = 'Saat {time} olarak ayarlandı.',
    real_time = 'Saat sunucunun saatini izliyor, bu yüzden burada değiştirilemez.',
    weather_usage = '/{command} ve şunlardan birini kullan: {list}.',
    weather_set = 'Hava {weather} olarak değişiyor.',
    time_frozen = 'Saat {time} itibarıyla durduruldu.',
    time_running = 'Saat {time} itibarıyla yeniden işliyor.',
    weather_frozen = 'Hava olduğu gibi kalıyor.',
    weather_running = 'Hava yeniden kendiliğinden değişiyor.',
    blackout_on = 'Elektrik kesintisi açık.',
    blackout_off = 'Elektrik kesintisi kapalı.',
}
