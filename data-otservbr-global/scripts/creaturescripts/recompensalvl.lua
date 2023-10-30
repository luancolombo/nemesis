local table = {
	-- [level] = type = "item", id = {ITEM_ID, QUANTIDADE}, msg = "MENSAGEM"},
	-- [level] = type = "bank", id = {QUANTIDADE, 0}, msg = "MENSAGEM"},
	-- [level] = type = "addon", id = {ID_ADDON_FEMALE, ID_ADDON_MALE}, msg = "MENSAGEM"},
	-- [level] = type = "mount", id = {ID_MOUNT, 0}, msg = "MENSAGEM"},
	[20] = { type = "item", id = { 3043, 3 }, msg = "You earned 3 crystal coins for reaching level 20!" },
	[100] = { type = "bank", id = { 100000, 0 }, msg = "100000 gold coins have been deposited in your bank for reaching level 100!" },
	[150] = { type = "addon", id = { 136, 128 }, msg = "You got the citizen full addon for reaching level 150!" },
	[250] = { type = "mount", id = { 9, 0 }, msg = "You have earned the Blazzebringer mount for reaching level 250!" },
}

local storage = 15000

local event = CreatureEvent("advanceRewards")

function event.onAdvance(player, skill, oldLevel, newLevel)
	if skill ~= SKILL_LEVEL or newLevel <= oldLevel then
		return true
	end

	for level, _ in pairs(table) do
		if newLevel >= level and player:getStorageValue(storage) < level then
			if table[level].type == "item" then
				player:addItem(table[level].id[1], table[level].id[2])
			elseif table[level].type == "bank" then
				player:setBankBalance(player:getBankBalance() + table[level].id[1])
			elseif table[level].type == "addon" then
				player:addOutfitAddon(table[level].id[1], 3)
				player:addOutfitAddon(table[level].id[2], 3)
			elseif table[level].type == "mount" then
				player:addMount(table[level].id[1])
			else
				return false
			end

			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, table[level].msg)
			player:setStorageValue(storage, level)
		end
	end

	player:save()

	return true
end

event:register()
