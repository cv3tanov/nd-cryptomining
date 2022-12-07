fx_version 'cerulean'
game 'gta5'

description 'CryptoMining'
version '1.0'

shared_script 'config.lua'

server_scripts {
	'config.lua',
	'server.lua'
}
client_scripts {
	'config.lua',
	'client.lua'
}

dependency 'nd-core'

lua54 'yes'