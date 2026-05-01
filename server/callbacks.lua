-- Utilise directement ox_lib (le plus performant et propre)
RCore.Callbacks = {}

-- Register un callback (client <-> serveur)
function RCore.Callbacks.Register(name, handler)
    lib.callback.register(name, handler)
    if Config.Debug then
        print(('^2[RCore]^7 Callback enregistré : ^3%s^7'):format(name))
    end
end

-- Version await (recommandée)
RCore.Callbacks.Await = lib.callback.await