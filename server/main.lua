ESX = exports['es_extended']:getSharedObject()
RCore = {}

-- Chargement des modules (ils s'ajoutent à RCore)
-- (les fichiers server/*.lua sont chargés après)

-- Export global
function RCore.GetCoreObject()
    return RCore
end
exports('GetCoreObject', RCore.GetCoreObject)

print('^2[RCore]^7 Server core initialized (ESX + ox ecosystem)')