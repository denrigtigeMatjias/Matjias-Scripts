local PlaceIds = {
    ["Mining Go"] = {id = 116434053579571, url = ""},
    ["Dig It"] = {id = 76455837887178, url = ""},
    ["Fisch"] = {id = 16732694052, url = ""},
    ["Backroom Drifts"] = {id = 138365924124161, url = "https://raw.githubusercontent.com/denrigtigeMatjias/Matjias-Scripts/refs/heads/main/Backroom%20Drifts.lua"},
    ["Arsenal"] = {id = 286090429, url = ""},
    ["Miners Haven"] = {id = 258258996, url = ""},
    ["Egg Tree Incremental"] = {id = 15055025587, url = "https://raw.githubusercontent.com/denrigtigeMatjias/Matjias-Scripts/refs/heads/main/Egg%20Tree%20Incemental.lua"},
    ["Universal GUI"] = {id = 0, url = ""},
}

local currentPlaceId = game.PlaceId
local found = false

for _, data in pairs(PlaceIds) do
    if data.id == currentPlaceId then
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
