-- Sends Discord webhook notifications.
-- The URL layout is https://discord.com/api/webhooks/:id/:token
-- Leave empty if you wish to disable.

announcementChannels = {
	["serverAnnouncements"] = "https://discord.com/api/webhooks/1156246862710444163/gCXHExkakhenpp2R8qRHmC_oVFUVnEX1nOTOkKhPr0danJAi25ouhl4xrxRSaKQTiyxn", -- Used for an announcement channel on your discord
	["raids"] = "", -- Used to isolate raids on your discord
	["player-kills"] = "https://discord.com/api/webhooks/1156247501389693029/USWn8fnEuKqoo5lJoQkBE-Q1bQ14pqThG6WVpMMyAoQbcOfNUNuq1KL5ihheDESZYIZ0", -- Self-explaining
	["bans"] = "https://discord.com/api/webhooks/1156244855647912057/ix6RzIUUEKNNXFr0GWYXNAu2HVw0JZHahxhDAzCQapIoQ4rutQP2ozeT89IfnSTIRg8K", -- Used for anunciate bans
}

--[[
	Example of notification (After you do the config):
	This is going to send a message into your server announcements channel

	local message = blablabla
	local title = test
	Webhook.sendMessage(title, message, WEBHOOK_COLOR_YELLOW,
                        announcementChannels["serverAnnouncements"])

	Dev Comment: This lib can be used to add special webhook channels
	where you are going to send your messages. Webhook.specialSend was designed
	to be used with countless possibilities.
]]
