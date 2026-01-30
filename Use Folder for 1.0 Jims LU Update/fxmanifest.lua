
name "LU-Consumables"
author "Eliza Lasal"
version "25.1.30"
description "Consumable Script By Eliza Lasal - Fork from Jim-Consumables"
fx_version "cerulean"
game "gta5"
lua54 'yes'

dependencies { 
    'qb-input', 
    'qb-menu', 
    'qb-target' 
}

shared_scripts { 
    'config.lua', 
    'shared/*.lua', 
    --'@FiniAC/fini_events.lua',  --Recommend if you have Fini on your server
}

client_scripts { 
    'client/*.lua', 

}

server_scripts { 
    'server/*.lua', 
    --'@oxmysql/lib/MySQL.lua', --Recommend if you are using the SQL for the script
}

dependency '/assetpacks'