--// Code By icmecodes
--// https://dsc.gg/bobhub
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

local supportedGames = {
    [13772394625] = true,  -- Blade Ball
    [14915220621] = true,  -- Blade Ball Ranked
    [14915220621] = true,  -- Blade Ball Pro
    [15144787112] = true,  -- Blade Ball Duels
}

local scriptUrl = "https://raw.githubusercontent.com/ZanoLeafVN/BobHub/main/AutoParry.lua"

if supportedGames[placeid] then
    loadScript(scriptUrl)
    print("Script executed successfully!")
else
    Players.LocalPlayer:Kick("Not Supported Game")
end
