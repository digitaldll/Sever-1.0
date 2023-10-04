fx_version 'cerulean'
game 'gta5'

server_scripts {
	'server.lua',

}

client_scripts {
	'client.lua',

}

shared_scripts {
    'config.lua',
}

lua54 'yes'

escrow_ignore {
    'config.lua',
    'bobcat.lua'
}
dependency '/assetpacks'