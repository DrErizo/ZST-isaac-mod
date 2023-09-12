require("scripts.nicksBoots")
local mod = RegisterMod("ZST mod",1)

local nicksBoots = Isaac.GetItemIdByName("Nicks Boots")
local malczewska = Isaac.GetItemIdByName("Malczewska")
local pilawskiMFC = Isaac.GetItemIdByName("Pilawski MFC")
local kraska = Isaac.GetItemIdByName("Kraska")
local oszku = Isaac.GetItemIdByName("Oszku")
local nicksCoat = Isaac.GetItemIdByName("Nicks Coat")
local tar = Isaac.GetItemIdByName("tar")
local seventyTwo = Isaac.GetItemIdByName("72")
local zstStairs = Isaac.GetItemIdByName("ZST Stairs")
local lesiusBike = Isaac.GetItemIdByName("Lesius Bike")
local zstTrafficLights = Isaac.GetItemIdByName("ZST Traffic lights")
local dissNaKraske= Isaac.GetItemIdByName("Diss na Kraske")
local dissnaKraske = Isaac.GetItemIdByName("Diss na Kraske")
local seaOfSpiders = Isaac.GetItemIdByName("991")

function handleNicksBoots(player,cacheFlags)
       local itemCount = player:GetCollectibleNum(nicksBoots)
       
       if cacheFlags & CacheFlag.CACHE_SPEED == CacheFlag.CACHE_SPEED then
              player.MoveSpeed = player.MoveSpeed + 0.5 * itemCount
       end
       if cacheFlags & CacheFlag.CACHE_DAMAGE == CacheFlag.CACHE_DAMAGE then
              player.Damage = player.Damage + 0.25 * itemCount
       end
       
end

function mod:EvaluateCache(player, cacheFlags)
       handleNicksBoots(player,cacheFlags);
end

mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, mod.EvaluateCache)