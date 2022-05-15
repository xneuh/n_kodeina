ESX = nil
Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

RegisterCommand('progbar', function()

    TriggerEvent('tesciknotify', 1, 2)

end)

RegisterNetEvent('w_kodeina:startMaking', function()
    TriggerServerEvent('w_kodeina:startMaking_SV')
end)