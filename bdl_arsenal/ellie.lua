local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")

vRPex = {}
Tunnel.bindInterface("bdl_arsenal",vRPex)

function vRPex.checkPermission()
	local src = source
	local user_id = vRP.getUserId(src)
	if vRP.hasPermission(user_id,"oos-lspd.permission") then
		TriggerClientEvent("Notify",source,"negado","Você está fora de serviço, bata seu ponto e tente novamente.")
	elseif vRP.hasPermission(user_id,"lspd.permission") then
		return true
	else
		TriggerClientEvent("Notify",source,"negado","Parece que você não tem permissão para isto, se você realmente é um policial, é provável que algo de errado tenha acontecido, contacte um superior.",15000)
		return false
	end
end