local internalNpcName = "Imbuement Assistant"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 1331,
	lookHead = 114,
	lookBody = 94,
	lookLegs = 94,
	lookFeet = 114,
	lookAddons = 3,
	lookMount = 0,
}

npcConfig.flags = {
	floorchange = false,
}

npcConfig.voices = {
	interval = 15000,
	chance = 50,
	{ text = "Hello adventurer, looking for Imbuement items? Just ask me!" },
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

keywordHandler:addKeyword({ "pack imbuement" }, StdModule.say, {
	npcHandler = npcHandler,
	text = "Do you want to buy for Skill increase => {Bash}, {Blockade}, {Chop}, {Epiphany}, {Precision}, {Slash}. Additional Attributes => {Featherweight}, {Strike}, {Swiftness}, {Vampirism}, {Vibrancy}, {Void}. Elemental Damage => {Electrify}, {Frost}, {Reap}, {Scorch}, {Venom}. Elemental Protection => {Cloud Fabric}, {Demon Presence}, {Dragon Hide}, {Lich Shroud}, {Quara Scale}, {Snake Skin}?",
})

-- Skill Pack

function addItemsToShoppingBag(player, moneyRequired, itemList)
	if player:removeMoneyBank(moneyRequired) then
		local shoppingBag = player:addItem(2856, 1) -- present box
		for _, item in pairs(itemList) do
			shoppingBag:addItem(item.itemId, item.count)
		end
		return true
	end
	return false
end

local function purchaseItems(keyword, text, moneyRequired, itemList)
	local stoneKeyword = keywordHandler:addKeyword({ keyword }, StdModule.say, { npcHandler = npcHandler, text = "Do you want to buy items for " .. text .. " imbuement for " .. moneyRequired .. " gold?" })
	stoneKeyword:addChildKeyword({ "yes" }, StdModule.say, { npcHandler = npcHandler, text = "You have successfully completed your purchase of the items.", reset = true }, function(player)
		return player:getMoney() + player:getBankBalance() >= moneyRequired
	end, function(player)
		return addItemsToShoppingBag(player, moneyRequired, itemList)
	end)
	stoneKeyword:addChildKeyword({ "yes" }, StdModule.say, { npcHandler = npcHandler, text = "Sorry, you don't have enough money.", reset = true })
end

-- skill increase packages
purchaseItems("bash", "skill club", 750000, { -- gold coin value
	{ itemId = 9657, count = 20 }, -- cyclops toe
	{ itemId = 22189, count = 15 }, -- ogre nose ring
	{ itemId = 10405, count = 10 }, -- warmaster's wristguards
})

purchaseItems("blockade", "skill shield", 1050000, { -- gold coin value
	{ itemId = 9641, count = 20 }, -- piece of scarab shell
	{ itemId = 11703, count = 25 }, -- brimstone shell
	{ itemId = 20199, count = 25 }, -- frazzle skin
})

purchaseItems("chop", "skill axe", 975000, { -- gold coin value
	{ itemId = 10196, count = 20 }, -- orc tooth
	{ itemId = 11447, count = 25 }, -- battle stone
	{ itemId = 21200, count = 20 }, -- moohtant horn
})

purchaseItems("epiphany", "magic level", 825000, { -- gold coin value
	{ itemId = 9635, count = 25 }, -- elvish talisman
	{ itemId = 11452, count = 15 }, -- broken shamanic staff
	{ itemId = 10309, count = 15 }, -- strand of medusa hair
})

purchaseItems("precision", "skill distance", 825000, { -- gold coin value
	{ itemId = 11464, count = 25 }, -- elven scouting glass
	{ itemId = 18994, count = 20 }, -- elven hoof
	{ itemId = 10298, count = 10 }, -- metal spike
})

purchaseItems("slash", "skill sword", 825000, { -- gold coin value
	{ itemId = 9691, count = 25 }, -- lion's mane
	{ itemId = 21202, count = 25 }, -- mooh'tah shell
	{ itemId = 9654, count = 5 }, -- war crystal
})

-- additional attributes packages
purchaseItems("featherweight", "capacity increase", 525000, { -- gold coin value
	{ itemId = 25694, count = 20 }, -- fairy wings
	{ itemId = 25702, count = 10 }, -- little bowl of myrrh
	{ itemId = 20205, count = 5 }, -- goosebump leather
})

purchaseItems("strike", "critical", 1000000, { -- gold coin value
	{ itemId = 11444, count = 20 }, -- protective charm
	{ itemId = 10311, count = 25 }, -- sabretooth
	{ itemId = 22728, count = 5 }, -- vexclaw talon
})

purchaseItems("swiftness", "speed", 1000000, { -- gold coin value
	{ itemId = 17458, count = 15 }, -- damselfly wing
	{ itemId = 10302, count = 25 }, -- compass
	{ itemId = 14081, count = 20 }, -- waspoid wing
})

purchaseItems("vampirism", "life leech", 1000000, { -- gold coin value
	{ itemId = 9685, count = 25 }, -- vampire teeth
	{ itemId = 9633, count = 15 }, -- bloody pincers
	{ itemId = 9663, count = 5 }, -- piece of dead brain
})

purchaseItems("vibrancy", "paralysis removal", 600000, { -- gold coin value
	{ itemId = 22053, count = 20 }, -- wereboar hooves
	{ itemId = 23507, count = 15 }, -- crystallized anger
	{ itemId = 28567, count = 5 }, -- quill
})

purchaseItems("void", "mana leech", 1000000, { -- gold coin value
	{ itemId = 11492, count = 25 }, -- rope belt
	{ itemId = 20200, count = 25 }, -- silencer claws
	{ itemId = 22730, count = 5 }, -- some grimeleech wings
})

-- elemental damage packages
purchaseItems("electrify", "energy damage", 465000, { -- gold coin value
	{ itemId = 18993, count = 25 }, -- rorc feather
	{ itemId = 21975, count = 5 }, -- peacock feather fan
	{ itemId = 23508, count = 1 }, -- energy vein
})

purchaseItems("frost", "ice damage", 600000, { -- gold coin value
	{ itemId = 9661, count = 25 }, -- frosty heart
	{ itemId = 21801, count = 10 }, -- seacrest hair
	{ itemId = 9650, count = 5 }, -- polar bear paw
})

purchaseItems("reap", "death damage", 465000, { -- gold coin value
	{ itemId = 11484, count = 25 }, -- pile of grave earth
	{ itemId = 9647, count = 20 }, -- demonic skeletal hand
	{ itemId = 10420, count = 5 }, -- petrified scream
})

purchaseItems("scorch", "fire damage", 525000, { -- gold coin value
	{ itemId = 9636, count = 25 }, -- fiery heart
	{ itemId = 5920, count = 5 }, -- green dragon scale
	{ itemId = 5954, count = 5 }, -- demon horn
})

purchaseItems("venom", "earth damage", 705000, { -- gold coin value
	{ itemId = 9686, count = 25 }, -- swamp grass
	{ itemId = 9640, count = 20 }, -- poisonous slime
	{ itemId = 21194, count = 2 }, -- slime heart
})

-- elemental protection packages
purchaseItems("cloud fabric", "energy protection", 700000, { -- gold coin value
	{ itemId = 9644, count = 20 }, -- wyvern talisman
	{ itemId = 14079, count = 15 }, -- crawler head plating
	{ itemId = 9665, count = 10 }, -- wyrm scale
})

purchaseItems("demon presence", "holy protection", 1050000, { -- gold coin value
	{ itemId = 9639, count = 25 }, -- cultish robe
	{ itemId = 9638, count = 25 }, -- cultish mask
	{ itemId = 10304, count = 20 }, -- hellspawn tail
})

purchaseItems("dragon hide", "fire protection", 525000, { -- gold coin value
	{ itemId = 5877, count = 20 }, -- green dragon leather
	{ itemId = 16131, count = 10 }, -- blazing bone
	{ itemId = 11658, count = 5 }, -- draken sulphur
})

purchaseItems("lich shroud", "death protection", 750000, { -- gold coin value
	{ itemId = 11466, count = 25 }, -- flask of embalming fluid
	{ itemId = 22007, count = 20 }, -- gloom wolf fur
	{ itemId = 9660, count = 5 }, -- mystical hourglass
})

purchaseItems("quara scale", "ice protection", 700000, { -- gold coin value
	{ itemId = 10295, count = 25 }, -- winter wolf fur
	{ itemId = 10307, count = 15 }, -- thick fur
	{ itemId = 14012, count = 10 }, -- deepling warts
})

purchaseItems("snake skin", "earth protection", 825000, { -- gold coin value
	{ itemId = 17823, count = 25 }, -- piece of swampling wood
	{ itemId = 9694, count = 20 }, -- snake skin
	{ itemId = 11702, count = 10 }, -- brimstone fangs
})

-- Basic

npcHandler:setMessage(MESSAGE_GREET, "Hello |PLAYERNAME| say {pack imbuement} or {trade} for buy imbuement items.")
npcHandler:setMessage(MESSAGE_WALKAWAY, "See you later |PLAYERNAME| come back soon.")
npcHandler:setMessage(MESSAGE_FAREWELL, "See you later |PLAYERNAME| come back soon.")

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new(), npcConfig.name, true, true, true)

npcConfig.shop = {
	{ itemName = "battle stone", clientId = 11447, buy = 15000 },
	{ itemName = "blazing bone", clientId = 16131, buy = 15000 },
	{ itemName = "bloody pincers", clientId = 9633, buy = 20000 },
	{ itemName = "brimstone fangs", clientId = 11702, buy = 15000 },
	{ itemName = "brimstone shell", clientId = 11703, buy = 15000 },
	{ itemName = "broken shamanic staff", clientId = 11452, buy = 15000 },
	{ itemName = "compass", clientId = 10302, buy = 15000 },
	{ itemName = "crawler head plating", clientId = 14079, buy = 15000 },
	{ itemName = "crystallized anger", clientId = 23507, buy = 15000 },
	{ itemName = "cultish mask", clientId = 9638, buy = 15000 },
	{ itemName = "cultish robe", clientId = 9639, buy = 15000 },
	{ itemName = "cyclops toe", clientId = 9657, buy = 15000 },
	{ itemName = "damselfly wing", clientId = 17458, buy = 15000 },
	{ itemName = "deepling warts", clientId = 14012, buy = 15000 },
	{ itemName = "demon horn", clientId = 5954, buy = 15000 },
	{ itemName = "demonic skeletal hand", clientId = 9647, buy = 15000 },
	{ itemName = "draken sulphur", clientId = 11658, buy = 15000 },
	{ itemName = "elven hoof", clientId = 18994, buy = 15000 },
	{ itemName = "elven scouting glass", clientId = 11464, buy = 15000 },
	{ itemName = "elvish talisman", clientId = 9635, buy = 15000 },
	{ itemName = "energy vein", clientId = 23508, buy = 15000 },
	{ itemName = "fairy wings", clientId = 25694, buy = 15000 },
	{ itemName = "fiery heart", clientId = 9636, buy = 15000 },
	{ itemName = "flask of embalming fluid", clientId = 11466, buy = 15000 },
	{ itemName = "frazzle skin", clientId = 20199, buy = 15000 },
	{ itemName = "frosty heart", clientId = 9661, buy = 15000 },
	{ itemName = "gloom wolf fur", clientId = 22007, buy = 15000 },
	{ itemName = "goosebump leather", clientId = 20205, buy = 15000 },
	{ itemName = "green dragon leather", clientId = 5877, buy = 15000 },
	{ itemName = "green dragon scale", clientId = 5920, buy = 15000 },
	{ itemName = "hellspawn tail", clientId = 10304, buy = 15000 },
	{ itemName = "lion's mane", clientId = 9691, buy = 15000 },
	{ itemName = "little bowl of myrrh", clientId = 25702, buy = 15000 },
	{ itemName = "metal spike", clientId = 10298, buy = 15000 },
	{ itemName = "mooh'tah shell", clientId = 21202, buy = 15000 },
	{ itemName = "moohtant horn", clientId = 21200, buy = 15000 },
	{ itemName = "mystical hourglass", clientId = 9660, buy = 15000 },
	{ itemName = "ogre nose ring", clientId = 22189, buy = 15000 },
	{ itemName = "orc tooth", clientId = 10196, buy = 15000 },
	{ itemName = "peacock feather fan", clientId = 21975, buy = 15000 },
	{ itemName = "petrified scream", clientId = 10420, buy = 15000 },
	{ itemName = "piece of dead brain", clientId = 9663, buy = 15000 },
	{ itemName = "piece of scarab shell", clientId = 9641, buy = 15000 },
	{ itemName = "piece of swampling wood", clientId = 17823, buy = 15000 },
	{ itemName = "pile of grave earth", clientId = 11484, buy = 15000 },
	{ itemName = "poisonous slime", clientId = 9640, buy = 15000 },
	{ itemName = "polar bear paw", clientId = 9650, buy = 15000 },
	{ itemName = "protective charm", clientId = 11444, buy = 20000 },
	{ itemName = "quill", clientId = 28567, buy = 15000 },
	{ itemName = "rope belt", clientId = 11492, buy = 15000 },
	{ itemName = "rorc feather", clientId = 18993, buy = 15000 },
	{ itemName = "sabretooth", clientId = 10311, buy = 20000 },
	{ itemName = "seacrest hair", clientId = 21801, buy = 15000 },
	{ itemName = "silencer claws", clientId = 20200, buy = 20000 },
	{ itemName = "slime heart", clientId = 21194, buy = 15000 },
	{ itemName = "snake skin", clientId = 9694, buy = 15000 },
	{ itemName = "some grimeleech wings", clientId = 22730, buy = 20000 },
	{ itemName = "strand of medusa hair", clientId = 10309, buy = 15000 },
	{ itemName = "swamp grass", clientId = 9686, buy = 15000 },
	{ itemName = "thick fur", clientId = 10307, buy = 15000 },
	{ itemName = "vampire teeth", clientId = 9685, buy = 20000 },
	{ itemName = "vexclaw talon", clientId = 22728, buy = 20000 },
	{ itemName = "war crystal", clientId = 9654, buy = 15000 },
	{ itemName = "warmaster's wristguards", clientId = 10405, buy = 15000 },
	{ itemName = "waspoid wing", clientId = 14081, buy = 15000 },
	{ itemName = "wereboar hooves", clientId = 22053, buy = 15000 },
	{ itemName = "winter wolf fur", clientId = 10295, buy = 15000 },
	{ itemName = "wyrm scale", clientId = 9665, buy = 15000 },
	{ itemName = "wyvern talisman", clientId = 9644, buy = 15000 },
	{ itemName = "warmaster's wristguards", clientId = 10405, buy = 15000 },
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
