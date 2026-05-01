-- Bridge ESX
function RCore.GetESXPlayer(source)
return ESX.GetPlayerFromId(source)
end

-- Player (cache prioritaire)
function RCore.GetPlayer(source)
return RCore.Players[source] or RCore.GetESXPlayer(source)
end

-- Identifier
function RCore.GetIdentifier(source, idType)
idType = idType or 'license'
local identifiers = GetPlayerIdentifiers(source)
for _, v in ipairs(identifiers) do
    if string.find(v, idType) then
        return v:gsub(idType .. ':', '')
    end
end
return nil
end

-- Permission (ESX group + ACE)
function RCore.HasPermission(source, requiredGroup)
local xPlayer = RCore.GetESXPlayer(source)
if not xPlayer then return false end
local group = xPlayer.getGroup()
return group == requiredGroup or group == 'admin' or group == 'superadmin' or IsPlayerAceAllowed(source, 'group.'..requiredGroup)
end

-- Notification serveur → client
function RCore.Notify(source, message, type, duration)
TriggerClientEvent('rcore:Notify', source, message, type or 'inform', duration or 5000)
end