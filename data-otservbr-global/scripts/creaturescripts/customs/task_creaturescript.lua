local taskCreature = CreatureEvent("TaskCreature")

function taskCreature.onDeath(creature)
	onDeathForDamagingPlayers(creature, function(creature, player)
		if not player:isPlayer() and not player:isPlayerControlled() then
			return true
		end

		local targetName = creature:getName():lower()
		local data = getTaskByMonsterName(targetName)
		if data ~= false and player:hasStartedTask(data.storage) then
			if TaskEventschedulerValueEvent then
				player:addTaskKill(data.storage, 2)
			else
				player:addTaskKill(data.storage, 1)
			end
		end
	end)
	return true
end

taskCreature:register()

local taskCreatureStartup = GlobalEvent("TaskCreatureStartup")

function taskCreatureStartup.onStartup()
	for _, bossName in pairs(taskConfiguration) do -- here is including the task_lib.lua monster list
		for key, value in ipairs(bossName.mobs) do
			local mType = MonsterType(value)
			if not mType then
				logger.error("[TaskCreatureStartup] boss with name {} is not a valid MonsterType", value)
			else
				mType:registerEvent("TaskCreature")
			end
		end
	end
end
taskCreatureStartup:register()
