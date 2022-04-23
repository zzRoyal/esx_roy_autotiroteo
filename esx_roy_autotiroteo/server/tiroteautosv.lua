ESX = nil

print"Created by itsRoyal#7294"

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterCommand("tiroteo", function(source)
        local xPlayer = ESX.GetPlayerFromId(source)
                TriggerClientEvent("TiroteoAlerta", source)
        end, false)
