local positionByDay = {
	[1] = { position = Position(32789, 31247, 7), city = "Yalahar" }, -- Sunday
	[4] = { position = Position(32271, 31140, 7), city = "Svargrond" }, -- Wednesday
	[7] = { position = Position(33166, 31814, 7), city = "Edron" }, -- Saturday
}

local function rerollwebhook(message) -- New local function that runs on delay to send webhook message.
	Webhook.sendMessage("[Nemesis Reroll] ", message, WEBHOOK_COLOR_ONLINE) --Sends webhook message
end

local reroll = GlobalEvent("reroll")
function reroll.onStartup()
	local today = os.date("*t").wday

	local config = positionByDay[today]
	if config then
		local reroll = Game.createNpc("Nemesis Reroll", config.position)
		if reroll then
			reroll:setMasterPos(config.position)
			reroll:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
		end

		logger.info("Nemesis Reroll arrived at {}", config.city)
		local message = string.format("Nemesis Reroll arrived at %s today.", config.city) -- Declaring the message to send to webhook.
		addEvent(rerollwebhook, 60000, message) -- Event with 1 minute delay to send webhook message after server starts.
	else
		logger.info("Nemesis Reroll dont spawn on {}", os.date("%A"))
	end

	return true
end

reroll:register()

local rerollSpawnOnTime = GlobalEvent("rerollSpawnOnTime")
function rerollSpawnOnTime.onTime(interval)
	local today = os.date("*t").wday

	local rerollTarget = Npc("nemesis reroll")
	local config = positionByDay[today]

	if rerollTarget then
		logger.info("Nemesis Reroll is traveling to {}s location.", config.city)
		local message = ("Nemesis Reroll is traveling to " .. config.city .. "s location.")
		rerollTarget:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
		rerollTarget:teleportTo(config.position)
		rerollTarget:setMasterPos(config.position)
		rerollTarget:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
		addEvent(rerollwebhook, 60000, message) -- Event with 1 minute delay to send webhook message after server starts.
	end

	return true
end

rerollSpawnOnTime:time("00:01")
rerollSpawnOnTime:register()