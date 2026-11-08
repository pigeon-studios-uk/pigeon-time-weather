--[[
    Pigeon Time and Weather: Finnish (Suomi).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'fi'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.fi = {
    title = 'Aika ja sää',
    no_permission = 'Sinulla ei ole lupaa tehdä sitä.',
    time_usage = 'Käytä /{command} tunnit [minuutit], esim. /{command} 14 30.',
    time_set = 'Aika asetettu: {time}.',
    real_time = 'Aika seuraa palvelimen kelloa, joten sitä ei voi muuttaa tässä.',
    weather_usage = 'Käytä /{command} ja yhtä näistä: {list}.',
    weather_set = 'Sää vaihtuu: {weather}.',
    time_frozen = 'Aika pysäytetty kello {time}.',
    time_running = 'Aika kulkee taas kello {time} alkaen.',
    weather_frozen = 'Sää pysyy ennallaan.',
    weather_running = 'Sää vaihtuu taas itsestään.',
    blackout_on = 'Sähkökatko päällä.',
    blackout_off = 'Sähkökatko pois.',
}
