--[[
    I get asked quite alot how to send something from Server side to client side / Client -> Server, So here is a few examples
]]


--[[Receive on client]]


-- Client 

RegisterNetEvent('ReceiveFromServer')
AddEventHandler('ReceiveFromServer', function (data1, data2, data3) --[All these data1-3 are optional but you can really put whatever here]
    print('First argument: ' .. data1 .. ' Second argument: ' .. data2 ' Third argument: ' .. data3)
end)







-- Server side


RegisterCommand('sendfromserver' , function (source, args, rawCommand)
    local data1 = GetPlayerName(source)
    local data2 = GetPlayerPing(source)
    local data3 = GetPlayerEndpoint(source)
    TriggerClientEvent('ReceiveFromServer', source, data1, data2, data3)
end)



------------ [[ It will essentialy be the same if you wanna do this the oppsite way, But nowadays you can do most things on server side so  ¯\_(ツ)_/¯ ]]




