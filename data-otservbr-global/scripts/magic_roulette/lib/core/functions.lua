--[[
	Description: This file is part of Roulette System (refactored)
	Author: Lyµ
	Discord: Lyµ#8767
	Adaptado para o Canary:  NvSo#4349
]]

local DatabaseRoulettePlays = dofile(DATA_DIRECTORY .. '/scripts/magic_roulette/lib/database/roulette_plays.lua')
local Constants = dofile(DATA_DIRECTORY .. '/scripts/magic_roulette/lib/core/constants.lua')
local Strings = dofile(DATA_DIRECTORY .. '/scripts/magic_roulette/lib/core/strings.lua')

local Functions = {}

function Functions:giveReward(player, reward)
	local item = Game.createItem(reward.id, reward.count)
	local itemName = ItemType(reward.id):getName()
	if not item then
		return false
	end

	if player:addItemEx(item) ~= RETURNVALUE_NOERROR then
		player:sendTextMessage(MESSAGE_ADMINISTRADOR, string.format(Strings.GIVE_REWARD_FAILURE))
		DatabaseRoulettePlays:update(reward.uuid, Constants.PLAY_STATUS_PENDING)
		return false
	end

	DatabaseRoulettePlays:update(reward.uuid, Constants.PLAY_STATUS_DELIVERED)
	player:sendTextMessage(MESSAGE_LOOK, string.format(Strings.GIVE_REWARD_SUCCESS:format(
		reward.count,
		itemName
	)))

	return true
end

return Functions