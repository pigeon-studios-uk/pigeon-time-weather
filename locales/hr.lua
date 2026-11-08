--[[
    Pigeon Time and Weather: Croatian (Hrvatski).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'hr'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.hr = {
    title = 'Vrijeme i prognoza',
    no_permission = 'Nemaš dopuštenje za to.',
    time_usage = 'Koristi /{command} sati [minute], npr. /{command} 14 30.',
    time_set = 'Vrijeme postavljeno na {time}.',
    real_time = 'Vrijeme prati sat poslužitelja, pa se ovdje ne može mijenjati.',
    weather_usage = 'Koristi /{command} i jedno od: {list}.',
    weather_set = 'Vrijeme se mijenja u {weather}.',
    time_frozen = 'Vrijeme zaustavljeno u {time}.',
    time_running = 'Vrijeme opet teče od {time}.',
    weather_frozen = 'Vrijeme ostaje kakvo jest.',
    weather_running = 'Vrijeme se opet mijenja samo.',
    blackout_on = 'Nestanak struje uključen.',
    blackout_off = 'Nestanak struje isključen.',
}
