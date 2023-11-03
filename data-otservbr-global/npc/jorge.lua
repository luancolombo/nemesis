local internalNpcName = "Jorge"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 159,
	lookHead = 38,
	lookBody = 77,
	lookLegs = 78,
	lookFeet = 94,
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

keywordHandler:addKeyword({ "silver raid tokens" }, StdModule.say, { npcHandler = npcHandler, text = "I can offer you rare items changing your silver raid tokens. If you'd like to check the quality of my wares, ask me for a {trade}." })

npcHandler:setMessage(MESSAGE_GREET, "Welcome to my  {silver raid tokens} shop, |PLAYERNAME|.")
npcHandler:setMessage(MESSAGE_FAREWELL, "Please come and buy again, |PLAYERNAME|.")
npcHandler:setMessage(MESSAGE_SENDTRADE, "Of course, take a good look at my very rare items.")
npcHandler:addModule(FocusModule:new(), npcConfig.name, true, true, true)

npcConfig.currency = 19083

npcConfig.shop = {
	{ itemName = "Abacus", clientid = 8156, buy = 40 },
	{ itemName = "Golden Raid Token", clientid = 19082, buy = 100 },
	{ itemName = "Assassin Doll", clientid = 28897, buy = 40 },
	{ itemName = "Bookworm Doll", clientid = 18343, buy = 40 },
	{ itemName = "Cateroides Doll", clientid = 22151, buy = 40 },
	{ itemName = "Doll of Durin the Almighty", clientid = 23679, buy = 40 },
	{ itemName = "Dragon Eye", clientid = 22027, buy = 40 },
	{ itemName = "Dragon Goblet", clientid = 31265, buy = 40 },
	{ itemName = "Draken Doll", clientid = 12043, buy = 40 },
	{ itemName = "Encyclopedia", clientid = 8149, buy = 40 },
	{ itemName = "Friendship Amulet", clientid = 19153, buy = 40 },
	{ itemName = "Frozen Heart", clientid = 19156, buy = 40 },
	{ itemName = "Golden Falcon", clientid = 28896, buy = 40 },
	{ itemName = "Golden Newspaper", clientid = 8153, buy = 40 },
	{ itemName = "Hand Puppets", clientid = 9189, buy = 40 },
	{ itemName = "Imortus", clientid = 12811, buy = 40 },
	{ itemName = "Jade Amulet", clientid = 31268, buy = 40 },
	{ itemName = "Key of Numerous Locks", clientid = 19152, buy = 40 },
	{ itemName = "Loremaster Doll", clientid = 31267, buy = 40 },
	{ itemName = "Luna", clientid = 36996, buy = 80 },
	{ itemName = "Mathmaster Shield", clientid = 14760, buy = 40 },
	{ itemName = "Medusa Skull", clientid = 14762, buy = 40 },
	{ itemName = "Music Box", clientid = 12045, buy = 40 },
	{ itemName = "Noble Sword", clientid = 16276, buy = 40 },
	{ itemName = "Norsemal Doll", clientid = 19150, buy = 40 },
	{ itemName = "Old Radio", clientid = 12813, buy = 40 },
	{ itemName = "Orcs Jaw Shredder", clientid = 19155, buy = 40 },
	{ itemName = "Pigeon Trophy", clientid = 31266, buy = 40 },
	{ itemName = "Phoenix Statue", clientid = 22026, buy = 40 },
	{ itemName = "The Mexcalibur", clientid = 19154, buy = 40 },
	{ itemName = "TibiaHispano Emblem", clientid = 25980, buy = 40 },
	{ itemName = "Goromaphone", clientid = 34210, buy = 40 },
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

-- npcType registering the npcConfig table
npcType:register(npcConfig)
