ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('w_kodeina:startMaking_SV', function()

    local src = source
    local data = ESX.GetPlayerFromId(src)
    local getItem = data.getInventoryItem
    if(getItem('sprite').count >= 1 and getItem('zelki').count >= 1 and getItem('herbapect').count >= 1) then
        TriggerClientEvent('w_notify:Show', src, 'WYTWARZANIE KODEINY', 20000)
        Wait(20000)
        TriggerClientEvent("dopeNotify:SendNotification", src, {		
            text = '<b><i class="fas fa-pills"></i> KODEINA</span></b></br><span style="color: #a9a29f;">Pomyślnie Wytworzono <span style="color: lightblue;">Kodeine!',
            type = "error",
            timeout = 2000,
            layout = "topRight"
        })
        data.removeInventoryItem('sprite', 1)
        data.removeInventoryItem('zelki', 1)
        data.removeInventoryItem('herbapect', 1)
        data.addInventoryItem('kodeina', 1)
    else
        TriggerClientEvent("dopeNotify:SendNotification", src, {		
            text = '<b><i class="fas fa-ban"></i> KODEINA</span></b></br><span style="color: #a9a29f;">Nie mozesz tego zrobic!',
            type = "error",
            timeout = 2000,
            layout = "topRight"
        })
    end

end)

RegisterServerEvent('w_notify:showSV', function(_1, _2)

    TriggerClientEvent("dopeNotify:SendNotification", source, {		
        text = '<b><i class="fas fa-pills"></i>' .. _1 .. '</span></b></br><span style="color: #a9a29f;">' .. _2,
        type = "error",
        timeout = 5000,
        layout = "topRight"
    })

end)

RegisterNetEvent('zioleczko', function()
    local src = source 
    local data = ESX.GetPlayerFromId(src)
    TriggerClientEvent('w_notify:Show', src, 'Zbieranie Marihuany', 30000)
    Wait(30000)
    data.addInventoryItem('weed2', math.random(1, 12))
end)