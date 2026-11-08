--[[
    Pigeon Time and Weather: French (Français).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'fr'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.fr = {
    title = 'Heure et météo',
    no_permission = 'Tu n\'as pas la permission de faire ça.',
    time_usage = 'Utilise /{command} heures [minutes], par exemple /{command} 14 30.',
    time_set = 'Heure réglée sur {time}.',
    real_time = 'L\'heure suit l\'horloge du serveur, elle ne peut pas être changée ici.',
    weather_usage = 'Utilise /{command} et l\'un de : {list}.',
    weather_set = 'La météo passe à {weather}.',
    time_frozen = 'Heure arrêtée à {time}.',
    time_running = 'L\'heure reprend à partir de {time}.',
    weather_frozen = 'La météo reste telle quelle.',
    weather_running = 'La météo change de nouveau toute seule.',
    blackout_on = 'Coupure de courant activée.',
    blackout_off = 'Coupure de courant désactivée.',
}
