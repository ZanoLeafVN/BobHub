local game = game
local Players = game.Players

local placeid = game.PlaceId

local function loadScript(scriptUrl)
    local success, scriptFunction = pcall(loadstring, game:HttpGet(scriptUrl))
    
    if success then
        scriptFunction()
    else
        warn("Error loading script:", scriptUrl)
    end
end

local gameNames = {
    ["Blade Ball"] = 13772394625,
}

local scripts = {
    [gameNames["Blade Ball"]] = "https://raw.githubusercontent.com/ZanoLeafVN/BobHub/main/AutoParry.lua",
}

local currentGameId = gameNames["Blade Ball"]
local currentScriptUrl = scripts[currentGameId]

if placeid == currentGameId then
    loadScript(currentScriptUrl)
    print("Script executed successfully!")
else
    Players.LocalPlayer:Kick("Not Supported Game")
end
