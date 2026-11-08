--[[
    Pigeon Time and Weather: Polish (Polski).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'pl'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.pl = {
    title = 'Czas i pogoda',
    no_permission = 'Nie masz uprawnień, aby to zrobić.',
    time_usage = 'Użyj /{command} godziny [minuty], np. /{command} 14 30.',
    time_set = 'Czas ustawiony na {time}.',
    real_time = 'Czas podąża za zegarem serwera, więc nie można go tu zmienić.',
    weather_usage = 'Użyj /{command} i jednej z: {list}.',
    weather_set = 'Pogoda zmienia się na {weather}.',
    time_frozen = 'Czas zatrzymany o {time}.',
    time_running = 'Czas znów płynie od {time}.',
    weather_frozen = 'Pogoda zostaje bez zmian.',
    weather_running = 'Pogoda znów zmienia się sama.',
    blackout_on = 'Awaria prądu włączona.',
    blackout_off = 'Awaria prądu wyłączona.',
}
