local internalNpcName = "Nemesis Reroll"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
  lookType = 1210,
  lookHead = 0,
  lookBody = 0,
  lookLegs = 0,
  lookFeet = 0,
  lookAddons = 3,
  lookMount = 0
}

npcConfig.flags = {
  floorchange = false
}

npcConfig.voices = {
  interval = 15000,
  chance = 50,
  { text = 'Eae... Pegou item errado na bag? quer rolar outra vez?' }
}

npcConfig.position = {
  { x = 32345, y = 32222, z = 7 }
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

npcHandler:setMessage(MESSAGE_GREET, "Ola |PLAYERNAME|, diga {trade} e clique em sell para trocar seu equipamento sanguine, soul ou primal por uma nova bag.\nVoce vai precisar de 250 Tibia Coins para a transacao funcionar, eu vou pegar seu equipamento + 250 Tibia Coins e vou lhe devolver uma bag correspondente ao equipamento")
npcHandler:setMessage(MESSAGE_FAREWELL, "Foi um prazer negociar com voce.")
npcHandler:setMessage(MESSAGE_SENDTRADE, "Vamos ver o que voce tem para trocar.")

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)

npcHandler:addModule(FocusModule:new(), npcConfig.name, true, true, true)

npcConfig.shop = {
  -- desire
  { itemName = "Soulcutter", clientId = 34082, sell = 1 },
  { itemName = "Soulcutter", clientId = 34082, sell = 1 },
  { itemName = "Soulshredder", clientId = 34083, sell = 1 },
  { itemName = "Soulbiter", clientId = 34084, sell = 1 },
  { itemName = "Souleater", clientId = 34085, sell = 1 },
  { itemName = "Soulcrusher", clientId = 34086, sell = 1 },
  { itemName = "Soulmaimer", clientId = 34087, sell = 1 },
  { itemName = "Pair of Soulwalkers", clientId = 34097, sell = 1 },
  { itemName = "Soulbastion", clientId = 34099, sell = 1 },
  { itemName = "Soulbleeder", clientId = 34088, sell = 1 },
  { itemName = "Soulpiercer", clientId = 34089, sell = 1 },
  { itemName = "Soulshell", clientId = 34094, sell = 1 },
  { itemName = "Pair of Soulstalkers", clientId = 34098, sell = 1 },
  { itemName = "Soultainter", clientId = 34090, sell = 1 },
  { itemName = "Soulshanks", clientId = 34092, sell = 1 },
  { itemName = "Soulmantle", clientId = 34095, sell = 1 },
  { itemName = "Soulhexer", clientId = 34091, sell = 1 },
  { itemName = "Soulstrider", clientId = 34093, sell = 1 },
  { itemName = "Soulshroud", clientId = 34096, sell = 1 },
  -- covet
  { itemName = "Sanguine Blade", clientId = 43864, sell = 1 },
  { itemName = "Sanguine Cudgel", clientId = 43866, sell = 1 },
  { itemName = "Sanguine Hatchet", clientId = 43868, sell = 1 },
  { itemName = "Sanguine Razor", clientId = 43870, sell = 1 },
  { itemName = "Sanguine Bludgeon", clientId = 43872, sell = 1 },
  { itemName = "Sanguine Battleaxe", clientId = 43874, sell = 1 },
  { itemName = "Sanguine Legs", clientId = 43876, sell = 1 },
  { itemName = "Sanguine Bow", clientId = 43877, sell = 1 },
  { itemName = "Sanguine Crossbow", clientId = 43879, sell = 1 },
  { itemName = "Sanguine Greaves", clientId = 43881, sell = 1 },
  { itemName = "Sanguine Coil", clientId = 43882, sell = 1 },
  { itemName = "Sanguine Boots", clientId = 43884, sell = 1 },
  { itemName = "Sanguine Rod", clientId = 43885, sell = 1 },
  { itemName = "Sanguine Galoshes", clientId = 43887, sell = 1 },
  -- primal
  { itemName = "Spiritthorn Armor", clientId = 39147, sell = 1 },
  { itemName = "Spiritthorn Helmet", clientId = 39148, sell = 1 },
  { itemName = "Charged Spiritthorn Ring", clientId = 39177, sell = 1 },
  { itemName = "Alicorn Headguard", clientId = 39149, sell = 1 },
  { itemName = "Alicorn Quiver", clientId = 39150, sell = 1 },
  { itemName = "Charged Alicorn Ring", clientId = 39180, sell = 1 },
  { itemName = "Arcanomancer Regalia", clientId = 39151, sell = 1 },
  { itemName = "Arcanomancer Folio", clientId = 39152, sell = 1 },
  { itemName = "Charged Arcanomancer Sigil", clientId = 39183, sell = 1 },
  { itemName = "Arboreal Crown", clientId = 39153, sell = 1 },
  { itemName = "Arboreal Tome", clientId = 39154, sell = 1 },
  { itemName = "Charged Arboreal Ring", clientId = 39186, sell = 1 },
}

local allBags = {
  -- desire
  [34082] = { id = 34082, name = "Soulcutter", bag = 34109 },
  [34083] = { id = 34083, name = "Soulshredder", bag = 34109 },
  [34084] = { id = 34084, name = "Soulbiter", bag = 34109 },
  [34085] = { id = 34085, name = "Souleater", bag = 34109 },
  [34086] = { id = 34086, name = "Soulcrusher", bag = 34109 },
  [34087] = { id = 34087, name = "Soulmaimer", bag = 34109 },
  [34097] = { id = 34097, name = "Pair of Soulwalkers", bag = 34109 },
  [34099] = { id = 34099, name = "Soulbastion", bag = 34109 },
  [34088] = { id = 34088, name = "Soulbleeder", bag = 34109 },
  [34089] = { id = 34089, name = "Soulpiercer", bag = 34109 },
  [34094] = { id = 34094, name = "Soulshell", bag = 34109 },
  [34098] = { id = 34098, name = "Pair of Soulstalkers", bag = 34109 },
  [34090] = { id = 34090, name = "Soultainter", bag = 34109 },
  [34092] = { id = 34092, name = "Soulshanks", bag = 34109 },
  [34095] = { id = 34095, name = "Soulmantle", bag = 34109 },
  [34091] = { id = 34091, name = "Soulhexer", bag = 34109 },
  [34093] = { id = 34093, name = "Soulstrider", bag = 34109 },
  [34096] = { id = 34096, name = "Soulshroud", bag = 34109 },
  --covet
  [43864] = { id = 43864, name = "Sanguine Blade", bag = 43898 },
  [43866] = { id = 43866, name = "Sanguine Cudgel", bag = 43898 },
  [43868] = { id = 43868, name = "Sanguine Hatchet", bag = 43898 },
  [43870] = { id = 43870, name = "Sanguine Razor", bag = 43898 },
  [43872] = { id = 43872, name = "Sanguine Bludgeon", bag = 43898 },
  [43874] = { id = 43874, name = "Sanguine Battleaxe", bag = 43898 },
  [43876] = { id = 43876, name = "Sanguine Legs", bag = 43898 },
  [43877] = { id = 43877, name = "Sanguine Bow", bag = 43898 },
  [43879] = { id = 43879, name = "Sanguine Crossbow", bag = 43898 },
  [43881] = { id = 43881, name = "Sanguine Greaves", bag = 43898 },
  [43882] = { id = 43882, name = "Sanguine Coil", bag = 43898 },
  [43884] = { id = 43884, name = "Sanguine Boots", bag = 43898 },
  [43885] = { id = 43885, name = "Sanguine Rod", bag = 43898 },
  [43887] = { id = 43887, name = "Sanguine Galoshes", bag = 43898 },
  -- primal
  [39147] = { id = 39147, name = "Spiritthorn Armor", bag = 39546 },
  [39148] = { id = 39148, name = "Spiritthorn Helmet", bag = 39546 },
  [39177] = { id = 39177, name = "Charged Spiritthorn Ring", bag = 39546 },
  [39149] = { id = 39149, name = "Alicorn Headguard", bag = 39546 },
  [39150] = { id = 39150, name = "Alicorn Quiver", bag = 39546 },
  [39180] = { id = 39180, name = "Charged Alicorn Ring", bag = 39546 },
  [39151] = { id = 39151, name = "Arcanomancer Regalia", bag = 39546 },
  [39152] = { id = 39152, name = "Arcanomancer Folio", bag = 39546 },
  [39183] = { id = 39183, name = "Charged Arcanomancer Sigil", bag = 39546 },
  [39153] = { id = 39153, name = "Arboreal Crown", bag = 39546 },
  [39154] = { id = 39154, name = "Arboreal Tome", bag = 39546 },
  [39186] = { id = 39186, name = "Charged Arboreal Ring", bag = 39546 },
}

local bagsPriceInTransferableCoins = {
  [34109] = 250, -- desire
  [43898] = 250, -- covet
  [39546] = 250, -- primal
}

-- On buy npc shop message
npcType.onBuyItem = function(npc, player, itemId, subType, amount, ignore, inBackpacks, totalCost)
  npc:sellItem(player, itemId, amount, subType, 0, ignore, inBackpacks)
end
-- On sell npc shop message
npcType.onSellItem = function(npc, player, itemId, subtype, amount, ignore, name, totalCost)
--[[   if not amount then
    player:sendTextMessage(MESSAGE_INFO_DESCR, string.format("Voce nao pode fazer reroll com itens imbuidos."))
    return false
  end ]]
  print(itemId)
  local embuement = ItemType(itemId):getImbuement()
  print(embuement)
  print(#embuement)
  print(id, name, duration)
  if not player:canRemoveTransferableCoins(bagsPriceInTransferableCoins[allBags[itemId].bag] * amount) then
    player:sendTextMessage(MESSAGE_INFO_DESCR, string.format("Voce nao tem %dTc", bagsPriceInTransferableCoins[allBags[itemId].bag] * amount))
    player:addItem(itemId, amount)
    player:setBankBalance(player:getBankBalance() - amount)
    return false
  end
  if player:getFreeBackpackSlots() < amount then
    player:sendTextMessage(MESSAGE_INFO_DESCR, string.format("Voce nao tem espaco na backpack."))
    player:addItem(itemId, amount)
    player:setBankBalance(player:getBankBalance() - amount)
    return false
  end
  player:removeTransferableCoinsBalance(bagsPriceInTransferableCoins[allBags[itemId].bag] * amount)
  GameStore.insertHistory(
    player:getAccountId(),
    GameStore.HistoryTypes.HISTORY_TYPE_NONE,
    string.format("Reroll %d %s por %d %s.", amount, allBags[itemId].name, amount, getItemName(allBags[itemId].bag)),
    -1 * (bagsPriceInTransferableCoins[allBags[itemId].bag] * amount),
    GameStore.CoinType.Coin
  )
  player:addItem(allBags[itemId].bag, amount)
  player:sendTextMessage(MESSAGE_INFO_DESCR, string.format("Voce trocou %d %s por %d %s.", amount, allBags[itemId].name, amount, getItemName(allBags[itemId].bag)))
end
-- On check npc shop message (look item)
npcType.onCheckItem = function(npc, player, clientId, subType)
end

npcType:register(npcConfig)
