--[[
	Description: This file is part of Roulette System (refactored)
	Author: Lyµ
	Discord: Lyµ#8767
	Adaptado para o Canary:  NvSo#4349
]]

local DatabaseRoulettePlays = dofile(DATA_DIRECTORY .. '/scripts/magic_roulette/lib/database/roulette_plays.lua')
local Functions = dofile(DATA_DIRECTORY .. '/scripts/magic_roulette/lib/core/functions.lua')

local creatureevent = CreatureEvent('Roulette Login')

function creatureevent.onLogin(player)
	local pendingPlayRewards = DatabaseRoulettePlays:selectPendingPlayRewardsByPlayerGuid(player:getGuid())
	
	for _, reward in ipairs(pendingPlayRewards) do
		Functions:giveReward(player, reward)
	end

	return true
end

creatureevent:register()
