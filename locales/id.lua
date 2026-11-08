--[[
    Pigeon Time and Weather: Indonesian (Bahasa Indonesia).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'id'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.id = {
    title = 'Waktu dan cuaca',
    no_permission = 'Kamu tidak punya izin untuk itu.',
    time_usage = 'Gunakan /{command} jam [menit], misalnya /{command} 14 30.',
    time_set = 'Waktu diatur ke {time}.',
    real_time = 'Waktu mengikuti jam server, jadi tidak bisa diubah di sini.',
    weather_usage = 'Gunakan /{command} dan salah satu dari: {list}.',
    weather_set = 'Cuaca berubah menjadi {weather}.',
    time_frozen = 'Waktu dihentikan pada {time}.',
    time_running = 'Waktu berjalan lagi dari {time}.',
    weather_frozen = 'Cuaca tetap seperti ini.',
    weather_running = 'Cuaca berubah sendiri lagi.',
    blackout_on = 'Pemadaman listrik nyala.',
    blackout_off = 'Pemadaman listrik mati.',
}
