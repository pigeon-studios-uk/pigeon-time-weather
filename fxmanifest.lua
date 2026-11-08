fx_version 'cerulean'
game 'gta5'
lua54 'yes'

name 'pigeon-time-weather'
author 'Pigeon Studios'
description 'The same time and weather for every player, changing by itself, with staff commands and a blackout, and no fighting with vMenu.'
version '1.0.0'
repository 'https://github.com/pigeon-studios-uk/pigeon-time-weather'

-- Pigeon Studios version registry entry, read by server/version_check.lua.
pigeon_slug 'pigeon-time-weather'

shared_script 'configuration/config.lua'

client_script 'client/main.lua'

server_scripts {
    'locales/*.lua',
    'server/main.lua',
    'server/version_check.lua',
}
