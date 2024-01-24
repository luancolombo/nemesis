local ban = TalkAction("/ban")

function ban.onSay(player, words, param)
	-- create log
	logCommand(player, words, param)

	if param == "" then
		player:sendCancelMessage("Um parametro eh exigido.")
		return true
	end

	local t = {}

	for str in string.gmatch(param, '([^,]+)') do
			table.insert(t, str)
	end

	local name = string.trim(t[1])
	local reason = string.trim(t[2])
	local banDays = t[3] and tonumber(string.trim(t[3])) or 7

	local accountId = getAccountNumberByPlayerName(name)
	if accountId == 0 then
		return true
	end

	local resultId = db.storeQuery("SELECT 1 FROM `account_bans` WHERE `account_id` = " .. accountId)
	if resultId ~= false then
		Result.free(resultId)
		return true
	end

	local timeNow = os.time()
	db.query("INSERT INTO `account_bans` (`account_id`, `reason`, `banned_at`, `expires_at`, `banned_by`) VALUES (" .. accountId .. ", " .. db.escapeString(reason) .. ", " .. timeNow .. ", " .. timeNow + (banDays * 86400) .. ", " .. player:getGuid() .. ")")

	local target = Player(name)
	if target then
		player:sendTextMessage(MESSAGE_ADMINISTRADOR, target:getName() .. " foi banido por ".. banDays.." dias ")
		Webhook.sendMessage("Player Banido: ", name .. " Motivo: " .. reason .. ", Duracao: "..banDays.." dias. (by: " .. player:getName() .. ")", WEBHOOK_COLOR_WARNING, announcementChannels["bans"])
		target:remove()
	else
		player:sendTextMessage(MESSAGE_ADMINISTRADOR, name .. " foi banido por ".. banDays.." dias ")
		Webhook.sendMessage("Player Banido: ", name .. " Motivo: " .. reason .. ", Duracao: "..banDays.." dias. (by: " .. player:getName() .. ")", WEBHOOK_COLOR_WARNING, announcementChannels["bans"])
	end
end

ban:separator(" ")
ban:groupType("gamemaster")
ban:register()
