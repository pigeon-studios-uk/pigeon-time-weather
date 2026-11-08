--[[
    Pigeon Time and Weather: Simplified Chinese (简体中文).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'zh-cn'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales['zh-cn'] = {
    title = '时间和天气',
    no_permission = '你没有权限这样做。',
    time_usage = '使用 /{command} 小时 [分钟]，例如 /{command} 14 30。',
    time_set = '时间已设为 {time}。',
    real_time = '时间跟随服务器时钟，这里无法更改。',
    weather_usage = '使用 /{command} 加以下之一：{list}。',
    weather_set = '天气正在变为 {weather}。',
    time_frozen = '时间已停在 {time}。',
    time_running = '时间从 {time} 重新开始流动。',
    weather_frozen = '天气保持不变。',
    weather_running = '天气重新自动变化。',
    blackout_on = '停电已开启。',
    blackout_off = '停电已关闭。',
}
