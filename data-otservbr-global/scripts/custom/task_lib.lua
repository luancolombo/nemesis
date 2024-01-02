taskOptions = {
	bonusReward = 65001, -- storage bonus reward
	bonusRate = 1, -- rate bonus reward
	taskBoardPositions = {
        {x = 32343, y = 32219, z = 7}, --thais
		{x = 32335, y = 31785, z = 7}, --carlin
		{x = 32921, y = 32075, z = 7}, --venore
		{x = 33213, y = 32457, z = 8}, --darashia
		{x = 32793, y = 31248, z = 7}, --yalahar
		{x = 32337, y = 32838, z = 7}, --liberty bay
		{x = 32623, y = 32746, z = 6}, --port hope
    },
	selectLanguage = 1, -- options: 1 = pt_br or 2 = english
	uniqueTask = false, -- do one task at a time
	uniqueTaskStorage = 65002
}

-- Ultima storage utilizada: 190085

task_pt_br = {
	exitButton = "Fechar",
	confirmButton = "Validar",
	cancelButton = "Anular",
	returnButton = "Voltar",
	title = "Task Board",
	missionError = "Missao esta em andamento ou ela ja foi concluida.",
	uniqueMissionError = "Voce so pode fazer uma missao por vez.",
	missionErrorTwo = "Voce concluiu a missao",
	missionErrorTwoo = "\nAqui estao suas recompensas:",
	choiceText = "- Experiencia: ",
	messageAcceptedText = "Voce aceitou essa missao!",
	messageDetailsText = "Detalhes da missao:",
	choiceMonsterName = "Nome: ",
	choiceMonsterKill = "Abates: ",
	choiceEveryDay = "Repeticao: Todos os dias",
	choiceRepeatable = "Repeticao: Sempre",
	choiceOnce = "Repeticao: Apenas uma vez",
	choiceReward = "Recompensas:",
	messageAlreadyCompleteTask = "Voce ja concluiu essa missao.",
	choiceCancelTask = "Voce cancelou essa missao",
	choiceCancelTaskError = "Voce nao pode cancelar essa missao, porque ela ja foi concluida ou nao foi iniciada.",
	choiceBoardText = "Escolha uma task e use os botoes abaixo:",
	choiceRewardOnHold = "Resgatar Premio",
	choiceDailyConclued = "Diaria Concluida",
	choiceConclued = "Concluida",
	messageTaskBoardError = "O quadro de missoes esta muito longe ou esse nao e o quadro de missoes correto.",
	messageCompleteTask = "Voce terminou essa missao! \nRetorne para o quadro de missoes e pegue sua recompensa.",
}

taskConfiguration = {
	{
		name = "Rotworm",
		color = 40,
		total = 200,
		type = "once",
		storage = 190006,
		storagecount = 190007,
		rewards = {
			{3043, 5},
			{"exp", 100000},
		},
		mobs = {"Rotworm"},
	},
	{
		name = "Amazon",
		color = 40,
		total = 250,
		type = "daily",
		storage = 190008,
		storagecount = 190009,
		rewards = { 
			{"exp", 1500000},
			{3043, 3},
			{19082, 10},
		},
		mobs = {"Amazon"},
	},
	{
		name = "Cyclops",
		color = 40,
		total = 250,
		type = "daily",
		storage = 190064,
		storagecount = 190065,
		rewards = {
			{3043, 20},
			{"exp", 1500000},
			{19082, 10},
		},
		mobs = {"Cyclops"},
	},
	{
		name = "Tortoises",
		color = 40,
		total = 300,
		type = "daily",
		storage = 190066,
		storagecount = 190067,
		rewards = {
			{3043, 20},
			{"exp", 1500000},
			{19082, 10},
		},
		mobs = {"Thornback Tortoise", "Tortoise"},
	},
	{
		name = "Minotaur Lair",
		color = 40,
		total = 1000,
		type = "once",
		storage = 190000,
		storagecount = 190001,
		rewards = {
			{5804, 1},
			{"exp", 3000000},
			{19082, 50},
		},
		mobs = {"Minotaur", "Minotaur Archer", "Minotaur Guard", "Minotaur Mage"},
	},
	{
		name = "Valkyrie",
		color = 40,
		total = 500,
		type = "once",
		storage = 190010,
		storagecount = 190011,
		rewards = { 
			{3043, 5},	
			{3437, 1},
			{19082, 50},
		},
		mobs = {"Valkyrie"},
	},
	{
		name = "Ancient Scarab",
		color = 40,
		total = 250,
		type = "daily",
		storage = 190072,
		storagecount = 190073,
		rewards = {
			{3043, 20},
			{"exp", 1500000},
			{19082, 10},
		},
		mobs = {"Ancient Scarab"},
	},
	{
		name = "Noble Lion",
		color = 40,
		total = 250,
		type = "daily",
		storage = 190078,
		storagecount = 190079,
		rewards = {
			{3043, 20},
			{"exp", 1500000},
			{19082, 10},
		},
		mobs = {"Noble Lion"},
	},
	{
		name = "Giant Spider",
		color = 40,
		total = 250,
		type = "daily",
		storage = 190082,
		storagecount = 190083,
		rewards = {
			{3043, 20},
			{"exp", 1500000},
			{19082, 10},
		},
		mobs = {"Giant Spider"},
	},
	{
		name = "Dragon",
		color = 40,
		total = 200,
		type = "daily",
		storage = 190002,
		storagecount = 190003,
		rewards = {
			{3043, 20},
			{"exp", 1500000},
			{19082, 10},
		},
		mobs = {"Dragon"},
	},
	{
		name = "Dragon Lord",
		color = 40,
		total = 750,
		type = "once",
		storage = 190004,
		storagecount = 190005,
		rewards = {
			{5919, 1},
			{5908, 1},
			{19082, 50},
			{"exp", 1500000},
		},
		mobs = {"Dragon Lord"},
	},
	{
		name = "Wyrm",
		color = 40,
		total = 250,
		type = "daily",
		storage = 190068,
		storagecount = 190069,
		rewards = {
			{3043, 30},
			{"exp", 1500000},
			{19082, 10},
		},
		mobs = {"Wyrm"},
	},
	{
		name = "Asuras",
		color = 40,
		total = 1000,
		type = "daily",
		storage = 190046,
		storagecount = 190047,
		rewards = { 
			{3043, 50},
			{"exp", 20000000},
			{19082, 25},
		},
		mobs = {"Dawnfire Asura", "Midnight Asura", "Frost Flower Asura"},
	},
	{
		name = "Hellspawn",
		color = 40,
		total = 1000,
		type = "daily",
		storage = 190070,
		storagecount = 190071,
		rewards = { 
			{3043, 50},
			{"exp", 20000000},
			{19082, 25},
		},
		mobs = {"Hellspawn"},
	},
	{
		name = "Hydra",
		color = 40,
		total = 250,
		type = "daily",
		storage = 190074,
		storagecount = 190075,
		rewards = {
			{3043, 30},
			{"exp", 1500000},
			{19082, 10},
		},
		mobs = {"Hydra"},
	},
	{
		name = "Medusa",
		color = 40,
		total = 2000,
		type = "once",
		storage = 190026,
		storagecount = 190027,
		rewards = { 
			{3393, 1},
			{19082, 150},
		},
		mobs = {"Medusa"},
	},
	{
		name = "Renegade Knight",
		color = 40,
		total = 350,
		type = "daily",
		storage = 190080,
		storagecount = 190081,
		rewards = {
			{3043, 50},
			{"exp", 1500000},
			{19082, 15},
		},
		mobs = {"Renegade Knight"},
	},
	{
		name = "Hero",
		color = 40,
		total = 1000,
		type = "once",
		storage = 190030,
		storagecount = 190031,
		rewards = { 
			{3394, 1},
			{19082, 50},
		},
		mobs = {"Hero"},
	},
	{
		name = "Werehyaena",
		color = 40,
		total = 250,
		type = "daily",
		storage = 190076,
		storagecount = 190077,
		rewards = {
			{3043, 50},
			{"exp", 1500000},
			{19082, 20},
		},
		mobs = {"Werehyaena"},
	},
	{
		name = "Weakened Frazzlemaw",
		color = 40,
		total = 500,
		type = "daily",
		storage = 190012,
		storagecount = 190013,
		rewards = { 
			{3043, 10},
			{22516, 10},
			{19082, 20},
		},
		mobs = {"Weakened Frazzlemaw"},
	},
	{
		name = "Enfeebled Silencer",
		color = 40,
		total = 500,
		type = "daily",
		storage = 190014,
		storagecount = 190015,
		rewards = {
			{3043, 10},
			{22721, 3},
			{19082, 20},
		},
		mobs = {"Enfeebled Silencer"},
	},
	{
		name = "Deepling Guard",
		color = 40,
		total = 500,
		type = "daily",
		storage = 190016,
		storagecount = 190017,
		rewards = {
			{3043, 10},
			{14142, 1},
			{19082, 20},
		},
		mobs = {"Deepling Guard"},
	},
	{
		name = "Deepling Warrior",
		color = 40,
		total = 500,
		type = "daily",
		storage = 190018,
		storagecount = 190019,
		rewards = {
			{3043, 10},
			{"exp", 10000000},
			{19082, 20},
		},
		mobs = {"Deepling Warrior"},
	},
	{
		name = "Deepling Scout",
		color = 40,
		total = 500,
		type = "daily",
		storage = 190020,
		storagecount = 190021,
		rewards = {
			{3043, 10},
			{"exp", 10000000},
			{19082, 20},
		},
		mobs = {"Deepling Scout"},
	},
	{
		name = "Guzzlemaw",
		color = 40,
		total = 1000,
		type = "daily",
		storage = 190084,
		storagecount = 190085,
		rewards = {
			{3043, 10},
			{"exp", 10000000},
			{19082, 30},
		},
		mobs = {"Guzzlemaw"},
	},
	{
		name = "Guzzlemaw",
		color = 40,
		total = 1000,
		type = "once",
		storage = 190022,
		storagecount = 190023,
		rewards = {
			{20270, 1},
			{19082, 100},
		},
		mobs = {"Guzzlemaw"},
	},
	{
		name = "Frazzlemaw",
		color = 40,
		total = 1000,
		type = "once",
		storage = 190086,
		storagecount = 190087,
		rewards = {
			{20272, 1},
			{19082, 100},
		},
		mobs = {"Frazzlemaw"},
	},
	{
		name = "Silencer",
		color = 40,
		total = 1000,
		type = "once",
		storage = 190024,
		storagecount = 190025,
		rewards = {
			{20271, 1},
			{19082, 100},
		},
		mobs = {"Silencer"},
	},
	{
		name = "Demon",
		color = 40,
		total = 1000,
		type = "once",
		storage = 190028,
		storagecount = 190029,
		rewards = {
			{3365, 1},
			{19082, 150},
		},
		mobs = {"Demon"},
	},
	{
		name = "Cloak Of Terror",
		color = 40,
		total = 500,
		type = "daily",
		storage = 190032,
		storagecount = 190033,
		rewards = {
			{3043, 10},
			{"exp", 30000000},
			{19082, 25},
		},
		mobs = {"Cloak Of Terror"},
	},
	{
		name = "Vibrant Phantom",
		color = 40,
		total = 500,
		type = "daily",
		storage = 190034,
		storagecount = 190035,
		rewards = {
			{"exp", 30000000},
			{19082, 25},
		},
		mobs = {"Vibrant Phantom"},
	},
	{
		name = "Courage Leech",
		color = 40,
		total = 500,
		type = "daily",
		storage = 190036,
		storagecount = 190037,
		rewards = {
			{"exp", 30000000},
			{19082, 25},
		},
		mobs = {"Courage Leech"},
	},
	{
		name = "Brachiodemon",
		color = 40,
		total = 500,
		type = "daily",
		storage = 190038,
		storagecount = 190039,
		rewards = {
			{"exp", 30000000},
			{19082, 25},
		},
		mobs = {"Brachiodemon"},
	},
	{
		name = "Infernal Demon",
		color = 40,
		total = 2000,
		type = "once",
		storage = 190040,
		storagecount = 190041,
		rewards = {
			{"exp", 100000000},
			{34109, 1},
			{19082, 250},
		},
		mobs = {"Infernal Demon"},
	},
	{
		name = "Infernal Phantom",
		color = 40,
		total = 2000,
		type = "daily",
		storage = 190042,
		storagecount = 190043,
		rewards = {
			{3043, 50},
			{"exp", 30000000},
			{19082, 40},
		},
		mobs = {"Infernal Phantom"},
	},
	{
		name = "Juggernaut",
		color = 40,
		total = 1000,
		type = "once",
		storage = 190044,
		storagecount = 190045,
		rewards = {
			{3422, 1},
			{19082, 150},
		},
		mobs = {"Juggernaut"},
	},
	{
		name = "Girtablilu Warrior",
		color = 40,
		total = 1000,
		type = "once",
		storage = 190052,
		storagecount = 190053,
		rewards = {
			{"exp", 100000000},
			{19082, 150},
		},
		mobs = {"Girtablilu Warrior"},
	},
	{
		name = "Dark Carnisylvan",
		color = 40,
		total = 1000,
		type = "once",
		storage = 190062,
		storagecount = 190063,
		rewards = {
			{"exp", 100000000},
			{19082, 150},
		},
		mobs = {"Dark Carnisylvan"}
	}	
}

squareWaitTime = 5000
taskQuestLog = 65000 -- A storage so you get the quest log
dailyTaskWaitTime = 20 * 60 * 60 

function Player.getCustomActiveTasksName(self)
local player = self
	if not player then
		return false
	end
local tasks = {}
	for i, data in pairs(taskConfiguration) do
		if player:getStorageValue(data.storagecount) ~= -1 then
		tasks[#tasks + 1] = data.name
		end
	end
	return #tasks > 0 and tasks or false
end


function getTaskByStorage(storage)
	for i, data in pairs(taskConfiguration) do
		if data.storage == tonumber(storage) then
			return data
		end
	end
	return false
end

function getTaskByMonsterName(name)
	for i, data in pairs(taskConfiguration) do
			for j, mob in ipairs(data.mobs) do
					if mob:lower() == name:lower() then
							return data
					end
			end
	end
	return false
end


function Player.startTask(self, storage)
local player = self
	if not player then
		return false
	end
local data = getTaskByStorage(storage)
	if data == false then
		return false
	end
	if player:getStorageValue(taskQuestLog) == -1 then
		player:setStorageValue(taskQuestLog, 1)
	end
	player:setStorageValue(storage, player:getStorageValue(storage) + 1)
	player:setStorageValue(data.storagecount, 0)
	return true
end

function Player.canStartCustomTask(self, storage)
local player = self
	if not player then
		return false
	end
local data = getTaskByStorage(storage)
	if data == false then
		return false
	end
	if data.type == "daily" then
		return os.time() >= player:getStorageValue(storage)
	elseif data.type == "once" then
		return player:getStorageValue(storage) == -1
	elseif data.type[1] == "repeatable" and data.type[2] ~= -1 then
		return player:getStorageValue(storage) < (data.type[2] - 1)
	else
		return true
	end
end

function Player.endTask(self, storage, prematurely)
local player = self
	if not player then
		return false
	end
local data = getTaskByStorage(storage)
	if data == false then
		return false
end
	if prematurely then
		if data.type == "daily" then
			player:setStorageValue(storage, -1)
		else
			player:setStorageValue(storage, player:getStorageValue(storage) - 1)
	end
	else
		if data.type == "daily" then
			player:setStorageValue(storage, os.time() + dailyTaskWaitTime)
		end
	end
	player:setStorageValue(data.storagecount, -1)
	return true
end

function Player.hasStartedTask(self, storage)
local player = self
	if not player then
		return false
	end
local data = getTaskByStorage(storage)
	if data == false then
		return false
	end
	return player:getStorageValue(data.storagecount) ~= -1
end


function Player.getTaskKills(self, storage)
local player = self
	if not player then
		return false
	end
	return player:getStorageValue(storage)
end

function Player.addTaskKill(self, storage, count)
local player = self
	if not player then
		return false
	end
local data = getTaskByStorage(storage)
	if data == false then
		return false
	end
	local kills = player:getTaskKills(data.storagecount)
	if kills >= data.total then
		return false
	end
	if kills + count >= data.total then
		if taskOptions.selectLanguage == 1 then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, task_pt_br.messageCompleteTask)
		else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "[Task System] You have finished this task! To claim your rewards, return to the quest board and claim your reward.")
		end
		return player:setStorageValue(data.storagecount, data.total)
	end
		player:say('Task: '..data.name ..' - ['.. kills + count .. '/'.. data.total ..']', TALKTYPE_MONSTER_SAY)
		return player:setStorageValue(data.storagecount, kills + count)
end