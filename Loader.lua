local PlaceIds = {
    ["Mining Go"] = {id = 116434053579571, url = "https://raw.githubusercontent.com/denrigtigeMatjias/Matjias-Scripts/refs/heads/main/Mining%20GO"},
    ["Fisch"] = {id = 16732694052, url = "https://raw.githubusercontent.com/denrigtigeMatjias/Matjias-Scripts/refs/heads/main/Fisch.lua"},
    ["Backrooms Drift"] = {id = 138365924124161, url = "https://raw.githubusercontent.com/denrigtigeMatjias/Matjias-Scripts/refs/heads/main/NO%20UPDATE/Backroom%20Drifts.lua"},
    ["Arsenal"] = {id = 286090429, url = "https://raw.githubusercontent.com/denrigtigeMatjias/Matjias-Scripts/refs/heads/main/Arsenal.lua"},
    ["Miners Haven"] = {id = 258258996, url = "https://raw.githubusercontent.com/denrigtigeMatjias/Matjias-Scripts/refs/heads/main/Miners%20Haven.lua"},
    ["Egg Tree Incremental"] = {id = 15055025587, url = "https://raw.githubusercontent.com/denrigtigeMatjias/Matjias-Scripts/refs/heads/main/NO%20UPDATE/Egg%20Tree%20Incemental.lua"},
    ["Universal GUI"] = {id = 0, url = "https://raw.githubusercontent.com/denrigtigeMatjias/Matjias-Scripts/refs/heads/main/Universal%20GUI.lua"},
}

local found = false

for _, data in pairs(PlaceIds) do
    if data.id == game.PlaceId then
        found = true
        loadstring(game:HttpGet(data.url))()
        break
    end
end
    
if not found then
    for _, data in pairs(PlaceIds) do
        if data.id == 0 then
            found = true
            loadstring(game:HttpGet(data.url))()
            break
        end
    end
end
