RCore.Players = {}   -- Cache léger

-- esx:playerLoaded
AddEventHandler('esx:playerLoaded', function(source, xPlayer)
    RCore.Players[source] = {
        source = source,
        identifier = xPlayer.identifier,
        license = RCore.GetIdentifier(source),
        name = xPlayer.getName(),
        job = xPlayer.job,
        group = xPlayer.getGroup()
    }
    if Config.Debug then
        RCore.Log(('Player ^2%s^7 (ID %s) chargé'):format(xPlayer.getName(), source), 'success')
    end
end)

AddEventHandler('esx:setJob', function(source, job)
    if RCore.Players[source] then RCore.Players[source].job = job end
end)

AddEventHandler('playerDropped', function()
    RCore.Players[source] = nil
end)