local raids = {
	--Terça-Feira
	["Tuesday"] = {
		["16:00"] = { raidName = "Midnight Panther" },
		["17:15"] = { raidName = "Massacre" },
	},

	--Quarta-Feira
	["Wednesday"] = {
		["12:00"] = { raidName = "Draptor" },
		["17:15"] = { raidName = "The Plasmother" },
	},

	--Quinta-Feira
	["Thursday"] = {
		["15:00"] = { raidName = "Ghazbaran" },
		["17:15"] = { raidName = "Dracola" },
		["19:00"] = { raidName = "Undead Cavebear" },
	},

	--Sexta-feira
	["Friday"] = {
		["06:00"] = { raidName = "Titanica" },
		["17:15"] = { raidName = "Mr. Punish" },
	},

	--Sábado
	["Saturday"] = {
		["17:15"] = { raidName = "The Handmaiden" },
		["20:00"] = { raidName = "Draptor" },
	},

	--Domingo
	["Sunday"] = {
		["13:30"] = { raidName = "Orc Backpack" },
		["15:00"] = { raidName = "Midnight Panther" },
		["17:15"] = { raidName = "Countess Sorrow" },
	},

	-- By date (Day/Month)
	["31/10"] = {
		["16:30"] = { raidName = "Halloween Hare" },
	},
}

local spawnRaids = GlobalEvent("spawn raids")
function spawnRaids.onThink(interval, lastExecution, thinkInterval)
	local day, date = os.date("%A"), getRealDate()

	local raidDays = {}
	if raids[day] then
		raidDays[#raidDays + 1] = raids[day]
	end
	if raids[date] then
		raidDays[#raidDays + 1] = raids[date]
	end
	if #raidDays == 0 then
		return true
	end

	for i = 1, #raidDays do
		local settings = raidDays[i][getRealTime()]
		if settings and not settings.alreadyExecuted then
			Game.startRaid(settings.raidName)
			settings.alreadyExecuted = true
		end
	end
	return true
end

spawnRaids:interval(60000)
spawnRaids:register()
