fx_version 'cerulean'
game 'gta5'
lua54 'yes'

name 'RCore'
author 'SYX'
version '1.0.0'
description 'Lightweight modular core above ESX - ox ecosystem'

dependencies {
    'es_extended',
    'ox_lib',
    'oxmysql',
    'ox_inventory'
}

shared_scripts {
    '@ox_lib/init.lua',
    'shared/config.lua'
}

client_scripts {
    'client/main.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',   -- permet MySQL.xxx.await
    'server/main.lua',
    'server/callbacks.lua',
    'server/database.lua',
    'server/logs.lua',
    'server/player.lua',
    'server/utils.lua'
}

exports { 'GetCoreObject' }
server_exports { 'GetCoreObject' }

files { 'shared/config.lua' }