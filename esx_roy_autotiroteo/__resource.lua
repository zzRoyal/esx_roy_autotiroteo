resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'ESX Royal Tiroteo'

version '1.0.0'

client_scripts {
	'@es_extended/locale.lua',
	'client/tiroteoclient.lua',
	'config.lua',
	'locales/*.lua'
}
server_scripts {
	'@es_extended/locale.lua',
	'server/tiroteautosv.lua',
	'config.lua',
	'locales/*.lua'
}


