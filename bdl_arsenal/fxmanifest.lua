fx_version 'bodacious'
game 'gta5'

author 'Badland v3.0 - E&G Vendas'
contact 'Edu#6055 or https://github.com/badlandproject'
version '1.0.0'

ui_page 'nui/badland.html'

client_scripts {
	'@vrp/lib/utils.lua',
	'joel.lua'
}

server_scripts {
	'@vrp/lib/utils.lua',
	'ellie.lua'
}

files {
	'nui/badland.html',
	'nui/badland.js',
    'nui/badland.css',
    
	'nui/img/rifles.png',
	'nui/img/smgs.png',
	'nui/img/shotguns.png',
	'nui/img/pistols.png'
}