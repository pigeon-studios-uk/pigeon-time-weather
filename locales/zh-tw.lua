--[[
    Pigeon Time and Weather: Traditional Chinese (繁體中文).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'zh-tw'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales['zh-tw'] = {
    title = '時間和天氣',
    no_permission = '你沒有權限這樣做。',
    time_usage = '使用 /{command} 小時 [分鐘]，例如 /{command} 14 30。',
    time_set = '時間已設為 {time}。',
    real_time = '時間跟隨伺服器時鐘，這裡無法更改。',
    weather_usage = '使用 /{command} 加以下之一：{list}。',
    weather_set = '天氣正在變為 {weather}。',
    time_frozen = '時間已停在 {time}。',
    time_running = '時間從 {time} 重新開始流動。',
    weather_frozen = '天氣保持不變。',
    weather_running = '天氣重新自動變化。',
    blackout_on = '停電已開啟。',
    blackout_off = '停電已關閉。',
}
