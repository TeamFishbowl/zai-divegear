fx_version 'adamant'

game 'gta5'


server_scripts {
	'server/main.lua',
    	'server/server.lua',
    	"@mysql-async/lib/MySQL.lua",
}

client_scripts {
    'client/client.lua'
}
