--[[
	Description: This file is part of Roulette System (refactored)
	Author: Lyµ
	Discord: Lyµ#8767
	Adaptado para o Canary:  NvSo#4349
]]

local Roulette = dofile(DATA_DIRECTORY .. '/scripts/magic_roulette/roulette.lua')
local Strings = dofile(DATA_DIRECTORY .. '/scripts/magic_roulette/lib/core/strings.lua')

local action = Action()


function action.onUse(player, item)
	local slot = Roulette:getSlot(item.actionid)
	if not slot then
		player:sendTextMessage(MESSAGE_ADMINISTRADOR, string.format(Strings.SLOT_NOT_IMPLEMENTED_YET))
		item:getPosition():sendMagicEffect(CONST_ME_POFF)
		return true
	end
	
	if slot:isRolling() then
		player:sendTextMessage(MESSAGE_ADMINISTRADOR, string.format(Strings.WAIT_TO_SPIN))
		return false
	end

	Roulette:roll(player, slot)
	return true
end

action:aid(17320)
action:register()