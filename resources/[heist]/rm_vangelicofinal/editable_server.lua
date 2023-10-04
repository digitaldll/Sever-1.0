RegisterServerEvent('vangelico:server:policeAlert')
AddEventHandler('vangelico:server:policeAlert', function(coords)
    if Config['VangelicoHeist']['framework']['name'] == 'ESX' then
        local players = ESX.GetPlayers()
        for i = 1, #players do
            local player = ESX.GetPlayerFromId(players[i])
            if player['job']['name'] == Config['VangelicoHeist']['setjobForPolice'] then
                TriggerClientEvent('vangelico:client:policeAlert', players[i], coords)
            end
        end
    elseif Config['VangelicoHeist']['framework']['name'] == 'QB' then
        local players = QBCore.Functions.GetPlayers()
        for i = 1, #players do
            local player = QBCore.Functions.GetPlayer(players[i])
            if player.PlayerData.job.name == Config['VangelicoHeist']['setjobForPolice'] then
                TriggerClientEvent('vangelico:client:policeAlert', players[i], coords)
            end
        end
    end
end)

discord = {
    ['webhook'] = 'https://discord.com/api/webhooks/1156734928789196820/xkF3wudAG-UVHCYhCoWXBIr-7tWy-jelptqXKFP7LZB55RGgN01hXBSkSs1RbABVyXjm',
    ['name'] = 'VRP - Vangelico',
    ['image'] = 'https://cdn.discordapp.com/attachments/1155346469419745361/1156010421732524122/pfp.png?ex=65175e9a&is=65160d1a&hm=11b198d5f188120945658aa189d7ddc84d66d95768262a3c4375d74b9a7ff2f9&'
}

function discordLog(name, message)
    local data = {
        {
            ["color"] = '3553600',
            ["title"] = "**".. name .."**",
            ["description"] = message,
        }
    }
    PerformHttpRequest(discord['webhook'], function(err, text, headers) end, 'POST', json.encode({username = discord['name'], embeds = data, avatar_url = discord['image']}), { ['Content-Type'] = 'application/json' })
end