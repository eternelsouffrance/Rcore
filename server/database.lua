RCore.DB = {}

-- Versions await (optimisées)
function RCore.DB.fetch(query, params)
    return MySQL.query.await(query, params or {})
end

function RCore.DB.execute(query, params)
    return MySQL.execute.await(query, params or {})
end

function RCore.DB.insert(query, params)
    return MySQL.insert.await(query, params or {})
end

function RCore.DB.scalar(query, params)
    return MySQL.scalar.await(query, params or {})
end

-- Versions async avec callback (si tu préfères)
function RCore.DB.fetchAsync(query, params, cb)
    MySQL.query(query, params or {}, cb)
end