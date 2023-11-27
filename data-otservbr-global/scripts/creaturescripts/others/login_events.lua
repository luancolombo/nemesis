local loginEvents = CreatureEvent("LoginEvents")
function loginEvents.onLogin(player)
	local events = {
		"AdvanceSave",
		"BossParticipation",
		"DropLoot",
		"PlayerDeath",
		"RookgaardAdvance",
		"FamiliarLogin",
		"FamiliarAdvance",
		--Quests
		--Cults Of Tibia Quest
		"HealthPillar",
		"YalahariHealth",
		-- Custom Events
		"TaskCreature"
	}

	for i = 1, #events do
		player:registerEvent(events[i])
	end
	return true
end

loginEvents:register()
