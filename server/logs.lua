function RCore.Log(message, level)
    level = level or 'info'
    local color = '^5'
    if level == 'error' then color = '^1'
    elseif level == 'warn' then color = '^3'
    elseif level == 'success' then color = '^2' end

    print(('[RCore] ' .. color .. message .. '^7'))

    -- Webhook Discord optionnel
    if Config.DiscordWebhook and Config.DiscordWebhook ~= '' then
        local embed = {{
            title = 'RCore - ' .. level:upper(),
            description = message,
            color = (level == 'error' and 0xFF0000) or (level == 'warn' and 0xFFFF00) or 0x00FF00,
            timestamp = os.date('!%Y-%m-%dT%H:%M:%SZ')
        }}
        PerformHttpRequest(Config.DiscordWebhook, function() end, 'POST', json.encode({
            username = 'RCore Logs',
            embeds = embed
        }), {['Content-Type'] = 'application/json'})
    end
end