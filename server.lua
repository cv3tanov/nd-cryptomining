local NDCore = exports['nd-core']:GetCoreObject()

RegisterServerEvent('nd-cryptomining:server:addCryptoCoins')
AddEventHandler('nd-cryptomining:server:addCryptoCoins', function(reward)
    local src = source
    local Player = NDCore.Functions.GetPlayer(source)

    if Player.Functions.AddMoney('cash', reward) then
        TriggerClientEvent('NDCore:Notify', src, "Спечелихте "..reward.."$", 'success')
    else
        TriggerClientEvent('NDCore:Notify', src, "Пробвай пак", 'error')
    end
end)

NDCore.Functions.CreateUseableItem("standard_cpu", function(source, item)
	local Player = NDCore.Functions.GetPlayer(source)
    TriggerClientEvent("nd-cryptomining:client:installCPU", source, "Standard CPU", Config.Reward["standard_cpu"], item)
end)

NDCore.Functions.CreateUseableItem("e2_cpu", function(source, item)
	local Player = NDCore.Functions.GetPlayer(source)
    TriggerClientEvent("nd-cryptomining:client:installCPU", source, "E2 CPU", Config.Reward["e2_cpu"], item)
end)

NDCore.Functions.CreateUseableItem("quantum_cpu", function(source, item)
	local Player = NDCore.Functions.GetPlayer(source)
    TriggerClientEvent("nd-cryptomining:client:installCPU", source, "Quantum CPU", Config.Reward["quantum_cpu"], item)
end)

RegisterServerEvent("nd-cryptomining:server:RemoveItem")
AddEventHandler("nd-cryptomining:server:RemoveItem", function(item)
    local src = source
    local Player = NDCore.Functions.GetPlayer(source)
    Player.Functions.RemoveItem(item, 1)
    TriggerClientEvent('inventory:client:ItemBox', src, NDCore.Shared.Items[item], "remove")
end)
