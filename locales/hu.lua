--[[
    Pigeon Time and Weather: Hungarian (Magyar).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'hu'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.hu = {
    title = 'Idő és időjárás',
    no_permission = 'Ehhez nincs jogosultságod.',
    time_usage = 'Használd: /{command} óra [perc], például /{command} 14 30.',
    time_set = 'Idő beállítva: {time}.',
    real_time = 'Az idő a szerver óráját követi, ezért itt nem módosítható.',
    weather_usage = 'Használd: /{command} és ezek egyike: {list}.',
    weather_set = 'Az időjárás erre változik: {weather}.',
    time_frozen = 'Idő megállítva: {time}.',
    time_running = 'Az idő újra telik ettől: {time}.',
    weather_frozen = 'Az időjárás marad, ahogy van.',
    weather_running = 'Az időjárás újra magától változik.',
    blackout_on = 'Áramszünet be.',
    blackout_off = 'Áramszünet ki.',
}
