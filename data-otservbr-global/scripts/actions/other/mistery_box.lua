local rewards = {
	{ id = 28718, name = "Falcon Bow" },
	{ id = 28724, name = "Falcon Battleaxe" },
	{ id = 28725, name = "Falcon Mace" },
	{ id = 28719, name = "Falcon Plate" },
	{ id = 28715, name = "Falcon Coif" },
	{ id = 28720, name = "Falcon Greaves" },
	{ id = 28723, name = "Falcon Longsword" },
	{ id = 28714, name = "Falcon Circlet" },
	{ id = 28717, name = "Falcon Wand" },
	{ id = 28716, name = "Falcon Rod" },
	{ id = 28721, name = "Falcon Shield" },
	{ id = 30394, name = "Cobra Boots" },
	{ id = 30395, name = "Cobra Club" },
	{ id = 30398, name = "Cobra Sword" },
	{ id = 30396, name = "Cobra Axe" },
	{ id = 31631, name = "The Cobra Amulet" },
	{ id = 30397, name = "Cobra Hood" },
	{ id = 30393, name = "Cobra Crossbow" },
	{ id = 30399, name = "Cobra Wand" },
	{ id = 30400, name = "Cobra Rod" },
	{ id = 34154, name = "Lion Shield" },
	{ id = 34151, name = "Lion Rod" },
	{ id = 34152, name = "Lion Wand" },
	{ id = 34157, name = "Lion Plate" },
	{ id = 34158, name = "Lion Amulet" },
	{ id = 34155, name = "Lion Longsword" },
	{ id = 34150, name = "Lion Longbow" },
	{ id = 34253, name = "Lion Axe" },
	{ id = 34156, name = "Lion Spangenhelm" },
	{ id = 39162, name = "Naga Wand" },
	{ id = 39155, name = "Naga Sword" },
	{ id = 39163, name = "Naga Rod" },
	{ id = 39159, name = "Naga Crossbow" },
	{ id = 39157, name = "Naga Club" },
	{ id = 39156, name = "Naga Axe" },
}

local misteryBox = Action()

function misteryBox.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local randId = math.random(1, #rewards)
	local rewardItem = rewards[randId]

	player:addItem(rewardItem.id, 1)
	item:remove(1)

	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You received a " .. rewardItem.name .. ".")
	return true
end

misteryBox:id(55003)
misteryBox:register()
