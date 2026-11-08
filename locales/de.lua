--[[
    Pigeon Time and Weather: German (Deutsch).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'de'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.de = {
    title = 'Zeit und Wetter',
    no_permission = 'Dafür hast du keine Berechtigung.',
    time_usage = 'Nutze /{command} Stunden [Minuten], z. B. /{command} 14 30.',
    time_set = 'Zeit auf {time} gesetzt.',
    real_time = 'Die Zeit folgt der Uhr des Servers und kann hier nicht geändert werden.',
    weather_usage = 'Nutze /{command} und eines von: {list}.',
    weather_set = 'Wetter wechselt zu {weather}.',
    time_frozen = 'Zeit bei {time} angehalten.',
    time_running = 'Zeit läuft wieder ab {time}.',
    weather_frozen = 'Das Wetter bleibt, wie es ist.',
    weather_running = 'Das Wetter wechselt wieder von selbst.',
    blackout_on = 'Stromausfall an.',
    blackout_off = 'Stromausfall aus.',
}
