RCore = {}

-- Notification (ox_lib)
function RCore.Notify(message, type, duration)
    lib.notify({
        title = Config.NotifyTitle,
        description = message,
        type = type or 'inform',
        duration = duration or 5000
    })
end

-- Event serveur → client pour les notifications
RegisterNetEvent('rcore:Notify', function(message, type, duration)
    RCore.Notify(message, type, duration)
end)

-- Export global
function RCore.GetCoreObject()
    return RCore
end
exports('GetCoreObject', RCore.GetCoreObject)

print('^2[RCore]^7 Client loaded successfully')