local internalNpcName = "Nemesis Token Trader"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 128,
	lookHead = 57,
	lookBody = 113,
	lookLegs = 95,
	lookFeet = 113,
	lookAddons = 3,
}

npcConfig.flags = {
	floorchange = false,
}

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)

npcType.onThink = function(npc, interval)
	npcHandler:onThink(npc, interval)
end

npcType.onAppear = function(npc, creature)
	npcHandler:onAppear(npc, creature)
end

npcType.onDisappear = function(npc, creature)
	npcHandler:onDisappear(npc, creature)
end

npcType.onMove = function(npc, creature, fromPosition, toPosition)
	npcHandler:onMove(npc, creature, fromPosition, toPosition)
end

npcType.onSay = function(npc, creature, type, message)
	npcHandler:onSay(npc, creature, type, message)
end

npcType.onCloseChannel = function(npc, creature)
	npcHandler:onCloseChannel(npc, creature)
end

npcConfig.currency = 22723

local itemsTable = {
	["knight sets"] = {
		{ itemName = "crown helmet", clientId = 3385, buy = 3 },
		{ itemName = "crown armor", clientId = 3381, buy = 5 },
		{ itemName = "crown legs", clientId = 3382, buy = 5 },
		{ itemName = "zaoan helmet", clientId = 10385, buy = 17 },
		{ itemName = "zaoan armor", clientId = 10384, buy = 20 },
		{ itemName = "zaoan legs", clientId = 10387, buy = 20 },
		{ itemName = "crystalline armor", clientId = 8050, buy = 35 },
		{ itemName = "lavos armor", clientId = 8049, buy = 35 },
		{ itemName = "swamplair armor", clientId = 8052, buy = 35 },
		{ itemName = "voltage armor", clientId = 8051, buy = 35 },
		{ itemName = "golden legs", clientId = 3364, buy = 35 },
		{ itemName = "skullcracker armor", clientId = 8061, buy = 55 },
		{ itemName = "earthborn titan armor", clientId = 8054, buy = 55 },
		{ itemName = "fireborn giant armor", clientId = 8053, buy = 55 },
		{ itemName = "oceanborn leviathan armor", clientId = 8056, buy = 55 },
		{ itemName = "windborn colossus armor", clientId = 8055, buy = 55 },	
	},
	["knight weapons"] = {
		{ itemName = "bright sword", clientId = 3295, buy = 5 },
		{ itemName = "fire sword", clientId = 3280, buy = 5 },
		{ itemName = "haunted blade", clientId = 7407, buy = 5 },
		{ itemName = "runed sword", clientId = 7417, buy = 15 },
		{ itemName = "knight axe", clientId = 3318, buy = 5 },
		{ itemName = "fire axe", clientId = 3320, buy = 5 },
		{ itemName = "glorious axe", clientId = 7454, buy = 5 },
		{ itemName = "hive scythe", clientId = 14089, buy = 15 },
		{ itemName = "dragon hammer", clientId = 3322, buy = 5 },
		{ itemName = "skull staff", clientId = 3324, buy = 5 },
		{ itemName = "spiked squelcher", clientId = 7452, buy = 5 },
		{ itemName = "one hit wonder", clientId = 21219, buy = 15 },
	},
	["paladin sets"] = {
		{ itemName = "wood cape", clientId = 3575, buy = 3 },
		{ itemName = "crown armor", clientId = 3381, buy = 5 },
		{ itemName = "crown legs", clientId = 3382, buy = 5 },
		{ itemName = "zaoan helmet", clientId = 10385, buy = 17 },
		{ itemName = "paladin armor", clientId = 8063, buy = 20 },
		{ itemName = "zaoan legs", clientId = 10387, buy = 20 },
		{ itemName = "golden legs", clientId = 3364, buy = 35 },
		{ itemName = "divine plate", clientId = 8057, buy = 35 },
		{ itemName = "frozen plate", clientId = 8059, buy = 35 },
		{ itemName = "molten plate", clientId = 8058, buy = 35 },
		{ itemName = "master archer's armor", clientId = 8060, buy = 55 },
	},
	["paladin weapons"] = {
		{ itemName = "ornate crossbow", clientId = 14247, buy = 5 },
		{ itemName = "crystal crossbow", clientId = 16163, buy = 10 },
		{ itemName = "rift crossbow", clientId = 22867, buy = 15 },
		{ itemName = "composite hornbow", clientId = 8027, buy = 5 },
		{ itemName = "warsinger bow", clientId = 8026, buy = 10 },
		{ itemName = "rift bow", clientId = 22866, buy = 15 },	
	},
	["mages weapons"] = {
		{ itemName = "wand of defiance", clientId = 16096, buy = 5 },
		{ itemName = "wand of everblazing", clientId = 16115, buy = 15 },
		{ itemName = "glacial rod", clientId = 16118, buy = 15 },
		{ itemName = "underworld rod", clientId = 8082, buy = 5 },		
	},
	["sorcerer sets"] = {
		{ itemName = "cobra crown", clientId = 11674, buy = 5 },
		{ itemName = "glacier mask", clientId = 829, buy = 5 },
		{ itemName = "lightning headband", clientId = 828, buy = 5 },
		{ itemName = "magma monocle", clientId = 827, buy = 5 },
		{ itemName = "terra hood", clientId = 830, buy = 5 },
		{ itemName = "blue legs", clientId = 645, buy = 20 },
		{ itemName = "spellweaver's robe", clientId = 10438, buy = 35 },
		{ itemName = "zaoan robe", clientId = 10439, buy = 35 },
		{ itemName = "dark lord's cape", clientId = 8037, buy = 35 },
		{ itemName = "velvet mantle", clientId = 8040, buy = 35 },		
	},
	["druid sets"] = {
		{ itemName = "cobra crown", clientId = 11674, buy = 5 },
		{ itemName = "glacier mask", clientId = 829, buy = 5 },
		{ itemName = "lightning headband", clientId = 828, buy = 5 },
		{ itemName = "magma monocle", clientId = 827, buy = 5 },
		{ itemName = "terra hood", clientId = 830, buy = 5 },
		{ itemName = "blue legs", clientId = 645, buy = 20 },
		{ itemName = "spellweaver's robe", clientId = 10438, buy = 35 },
		{ itemName = "zaoan robe", clientId = 10439, buy = 35 },
		{ itemName = "greenwood coat", clientId = 8041, buy = 35 },
		{ itemName = "robe of the ice queen", clientId = 8038, buy = 35 },		
	},
	["canivete tools"] = {
		{ itemName = "whacking driller of fate", clientId = 9598, buy = 100 },
		{ itemName = "sneaky stabber of eliteness", clientId = 9594, buy = 100 },
		{ itemName = "squeezing gear of girlpower", clientId = 9596, buy = 100 },
		{ itemName = "bag of forge dusts", clientId = 23682, buy = 50 },	
	},
	["especial trinkets"] = {
		{ itemName = "bone fiddle", clientId = 28493, buy = 150 },
		{ itemName = "conch shell horn", clientId = 43863, buy = 150 },
		{ itemName = "scarab ocarina", clientId = 43740, buy = 150 },
		{ itemName = "starlight vial", clientId = 25976, buy = 150 },
		{ itemName = "moon mirror", clientId = 25975, buy = 150 },
		{ itemName = "sun catcher", clientId = 25977, buy = 150 },
		{ itemName = "lit torch", clientId = 34016, buy = 150 },	
	},
}
	

local function creatureSayCallback(npc, player, type, message)
	local formattedCategoryNames = {}
	for categoryName, _ in pairs(itemsTable) do
		table.insert(formattedCategoryNames, "{" .. categoryName .. "}")
	end

	local categoryTable = itemsTable[message:lower()]
	if MsgContains(message, "shop options") then
		npcHandler:say("I sell a selection of " .. table.concat(formattedCategoryNames, ", "), npc, player)
	elseif categoryTable then
		npcHandler:say("Here are the items for the category " .. message, npc, player)
		npc:openShopWindowTable(player, categoryTable)
	end
end

npcHandler:setMessage(MESSAGE_GREET, "Welcome to my exclusive nemesis token shop. I'm always at your {shop options}")
npcHandler:setMessage(MESSAGE_FAREWELL, "Farewell, |PLAYERNAME|, I'll be here if you need me again.")
npcHandler:setMessage(MESSAGE_WALKAWAY, "Come back soon!")

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new(), npcConfig.name, true, true, true)

-- On buy npc shop message
npcType.onBuyItem = function(npc, player, itemId, subType, amount, ignore, inBackpacks, totalCost)
	npc:sellItem(player, itemId, amount, subType, 0, ignore, inBackpacks)
end
-- On sell npc shop message
npcType.onSellItem = function(npc, player, itemId, subtype, amount, ignore, name, totalCost)
	player:sendTextMessage(MESSAGE_INFO_DESCR, string.format("Sold %ix %s for %i gold.", amount, name, totalCost))
end
-- On check npc shop message (look item)
npcType.onCheckItem = function(npc, player, clientId, subType) end

npcType:register(npcConfig)
