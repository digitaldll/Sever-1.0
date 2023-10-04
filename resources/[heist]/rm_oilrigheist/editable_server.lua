RegisterServerEvent('oilrig:server:policeAlert')
AddEventHandler('oilrig:server:policeAlert', function(coords)
    if Config['OilRigHeist']['framework']['name'] == 'ESX' then
        local players = GetPlayers()
        for i = 1, #players do
            local player = ESX.GetPlayerFromId(players[i])
            if player['job']['name'] == Config['OilRigHeist']['setjobForPolice'] then
                TriggerClientEvent('oilrig:client:policeAlert', players[i], coords)
            end
        end
    elseif Config['OilRigHeist']['framework']['name'] == 'QB' then
        local players = QBCore.Functions.GetPlayers()
        for i = 1, #players do
            local player = QBCore.Functions.GetPlayer(players[i])
            if player.PlayerData.job.name == Config['OilRigHeist']['setjobForPolice'] then
                TriggerClientEvent('oilrig:client:policeAlert', players[i], coords)
            end
        end
    end
end)

discord = {
    ['webhook'] = 'https://discord.com/api/webhooks/1156734928789196820/xkF3wudAG-UVHCYhCoWXBIr-7tWy-jelptqXKFP7LZB55RGgN01hXBSkSs1RbABVyXjm',
    ['name'] = 'VRP - OilRig',
    ['image'] = 'https://cdn.discordapp.com/attachments/1155346469419745361/1156010421732524122/pfp.png?ex=6515645a&is=651412da&hm=9c006d47da3c197b933b59e5f425dfd02c31660d5e72a382388952e6c4e87f1d&'
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