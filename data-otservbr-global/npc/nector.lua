local internalNpcName = "Nector"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 1489,
	lookHead = 79,
	lookBody = 38,
	lookLegs = 0,
	lookFeet = 68,
	lookAddons = 2,
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

keywordHandler:addKeyword({ "gold tokens" }, StdModule.say, { npcHandler = npcHandler, text = "I can offer you very rare items changing your gold tokens. If you'd like to check the quality of my wares, ask me for a {trade}." })

npcHandler:setMessage(MESSAGE_GREET, "Welcome to my supreme {gold tokens} shop, |PLAYERNAME|.")
npcHandler:setMessage(MESSAGE_FAREWELL, "Please come and buy again, |PLAYERNAME|.")
npcHandler:setMessage(MESSAGE_SENDTRADE, "Of course, take a good look at my very rare items.")
npcHandler:addModule(FocusModule:new(), npcConfig.name, true, true, true)

npcConfig.currency = 22721

npcConfig.shop = {
	{ itemName = "wealth duplex", clientId = 36727, buy = 50 },
	{ itemName = "strike enhancement", clientId = 36724, buy = 60 },
	{ itemName = "stamina extension", clientId = 36725, buy = 60 },
	{ itemName = "bestiary betterment", clientId = 36728, buy = 100 },
	{ itemName = "abridged promotion scroll", clientId = 43946, buy = 100 },
	{ itemName = "advanced promotion scroll", clientId = 43950, buy = 100 },
	{ itemName = "silver raid token", clientId = 19083, buy = 200 },
}

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
