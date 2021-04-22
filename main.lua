ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterCommand('divegear', function(source, args, user)
    TriggerClientEvent("zai-divegear:client:UseGear", source, false)
end, true)

ESX.RegisterUsableItem('diving_gear', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('diving_gear', 1)

    TriggerClientEvent("zai-divegear:client:UseGear", source, true)
end)

RegisterServerEvent('zai-divegear:server:RemoveItem')
AddEventHandler('zai-divegear:server:RemoveItem', function(item, amount)
    local src = source
    local Player = ESX.GetPlayerFromId(src)

    Player.removeInventoryItem(item, amount)
end)
