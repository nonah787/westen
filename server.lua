ESX = nil   
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.registerUsableItem('weste', function(source)

    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.removeInventoryItem('weste', 1)
    TriggerClientEvent('Westen:weste', source)

end)