ESX = nil
Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

RegisterNetEvent('Westen:weste')
AddEventHandler('Westen:weste', function()
    
    local playerPed = PlayerPedId()
    local lib = 'clothingtie'
    local anim = 'try_tie_neutral_0'
    ESX.Streaming.RequestAnimationDict(lib, function()
        TaskPlayAnim(playerPed, lib, anim, 8.0, 1.0, -1, 49, 0, false, false, false)
        RemoveAnimDict(lib)
    end)
    Citizen.Wait(1000)
    ClearPedTasks(playerPed)

    SetPedArmour(PlayerPedId, 100)
    TriggerEvent('skinchanger:change' 'weste_1', 15)


end)