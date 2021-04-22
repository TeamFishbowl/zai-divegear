ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)



RegisterServerEvent('zai-divegear:server:RemoveGear')
AddEventHandler('zai-divegear:server:RemoveGear', function()
    local src = source
    local Player = ESX.GetPlayerFromId(src)

    Player.removeInventoryItem('diving_gear', 1)
end)

RegisterServerEvent('zai-divegear:server:GiveBackGear')
AddEventHandler('zai-divegear:server:GiveBackGear', function()
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    
    Player.addInventoryItem('diving_gear', 1)
end)
