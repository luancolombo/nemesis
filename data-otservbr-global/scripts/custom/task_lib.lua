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

-- Ultima storage utilizada: 190135

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
			{22721, 5},
			{3043, 3},
			{19082, 10},
		},
		mobs = {"Amazon"},
	},
	{
		name = "Cyclopolis",
		color = 40,
		total = 500,
		type = "daily",
		storage = 190064,
		storagecount = 190065,
		rewards = {
			{3043, 20},
			{"exp", 1500000},
			{22721, 5},
			{19082, 10},
		},
		mobs = {"Cyclops", "Cyclops Smith", "Cyclops Drone"},
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
			{22721, 5},
			{19082, 10},
		},
		mobs = {"Thornback Tortoise", "Tortoise"},
	},
	{
		name = "Minotaur Lair",
		color = 40,
		total = 2000,
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
			{"exp", 300000}, 
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
			{22721, 5},
			{"exp", 1500000},
			{19082, 10},
		},
		mobs = {"Ancient Scarab"},
	},
	{
		name = "Noble Lion",
		color = 40,
		total = 500,
		type = "daily",
		storage = 190078,
		storagecount = 190079,
		rewards = {
			{3043, 20},
			{22721, 5},
			{"exp", 1500000},
			{19082, 15},
		},
		mobs = {"Noble Lion", "Roaring Lion"},
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
			{22721, 5},
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
			{22721, 5},
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
		total = 500,
		type = "daily",
		storage = 190068,
		storagecount = 190069,
		rewards = {
			{3043, 30},
			{22721, 5},
			{"exp", 1500000},
			{19082, 10},
		},
		mobs = {"Wyrm", "Elder Wyrm"},
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
			{22721, 5},
			{"exp", 20000000},
			{19082, 25},
		},
		mobs = {"Dawnfire Asura", "Midnight Asura", "Frost Flower Asura"},
	},
	{
		name = "True Asuras",
		color = 40,
		total = 1000,
		type = "daily",
		storage = 190130,
		storagecount = 190131,
		rewards = { 
			{3043, 50},
			{22721, 5},
			{"exp", 20000000},
			{19082, 30},
		},
		mobs = {"True Dawnfire Asura", "True Midnight Asura", "True Frost Flower Asura"},
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
		name = "Medusa Banuta",
		color = 40,
		total = 4000,
		type = "once",
		storage = 190026,
		storagecount = 190027,
		rewards = { 
			{3393, 1},
			{3394, 1},
			{19082, 250},
		},
		mobs = {"Medusa", "Hydra", "Souleater", "Eternal Guardian"},
	},
	{
		name = "Hero Cave",
		color = 40,
		total = 2000,
		type = "daily",
		storage = 190030,
		storagecount = 190031,
		rewards = { 
			{3043, 50},
			{22721, 5},
			{"exp", 1500000},
			{19082, 50},
		},
		mobs = {"Hero", "Undead Gladiator", "Vile Grandmaster", "Blood Priest"},
	},
	{
		name = "Werehyaena",
		color = 40,
		total = 1000,
		type = "daily",
		storage = 190076,
		storagecount = 190077,
		rewards = {
			{3043, 50},
			{"exp", 1500000},
			{19082, 20},
		},
		mobs = {"Werehyaena", "Werehyaena Shaman"},
	},
	{
		name = "Weakened Frazz",
		color = 40,
		total = 1000,
		type = "daily",
		storage = 190012,
		storagecount = 190013,
		rewards = { 
			{3043, 10},
			{22516, 10},
			{19082, 20},
		},
		mobs = {"Weakened Frazzlemaw", "Enfeebled Silencer"},
	},
	{
		name = "Deeplings",
		color = 40,
		total = 1000,
		type = "daily",
		storage = 190016,
		storagecount = 190017,
		rewards = {
			{3043, 10},
			{19082, 20},
		},
		mobs = {"Deepling Guard", "Deepling Warrior", "Deepling Scout"},
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
			{19082, 25},
		},
		mobs = {"Guzzlemaw", "Frazzlemaw", "Silencer"},
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
		name = "Juggernaut",
		color = 40,
		total = 3000,
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
		name = "Hell Hub",
		color = 40,
		total = 1000,
		type = "daily",
		storage = 190132,
		storagecount = 190133,
		rewards = {
			{3043, 50},
			{22721, 5},
			{"exp", 20000000},
			{19082, 25},
		},
		mobs = {"Grimeleech", "Hellflayer", "Vexclaw"},
	},
	{
		name = "Girtablilus",
		color = 40,
		total = 2000,
		type = "once",
		storage = 190052,
		storagecount = 190053,
		rewards = {
			{"exp", 100000000},
			{19082, 150},
		},
		mobs = {"Girtablilu Warrior", "Venerable Girtablilu"},
	},
	{
		name = "Carnisylvans",
		color = 40,
		total = 4000,
		type = "once",
		storage = 190062,
		storagecount = 190063,
		rewards = {
			{"exp", 100000000},
			{19082, 150},
		},
		mobs = {"Dark Carnisylvan", "Poisonous Carnisylvan", "Hulking Carnisylvan"}
	},
	{
		name = "Falcon Bastion",
		color = 40,
		total = 1000,
		type = "daily",
		storage = 190088,
		storagecount = 190089,
		rewards = {
			{"exp", 30000000},
			{22721, 5},
			{19082, 25},
		},
		mobs = { "Falcon Paladin", "Falcon Knight" },
	},
	{
		name = "Cobra Bastion",
		color = 40,
		total = 1000,
		type = "daily",
		storage = 190090,
		storagecount = 190091,
		rewards = {
			{"exp", 30000000},
			{22721, 5},
			{19082, 25},
		},
		mobs = { "Cobra Scout", "Cobra Assassin", "Cobra Vizier" },
	},
	{
		name = "Winter Elfs",
		color = 40,
		total = 1000,
		type = "daily",
		storage = 190118,
		storagecount = 190119,
		rewards = {
			{"exp", 30000000},
			{22721, 5},
			{19082, 25},
		},
		mobs = { "Crazed Winter Rearguard", "Crazed Winter Vanguard" },
	},
	{
		name = "Summer Elfs",
		color = 40,
		total = 1000,
		type = "daily",
		storage = 190128,
		storagecount = 190129,
		rewards = {
			{"exp", 30000000},
			{22721, 5},
			{19082, 25},
		},
		mobs = { "Crazed Summer Rearguard", "Crazed Summer Vanguard" },
	},
	{
		name = "Carnivors",
		color = 40,
		total = 1000,
		type = "daily",
		storage = 190134,
		storagecount = 190135,
		rewards = {
			{"exp", 30000000},
			{22721, 5},
			{19082, 25},
		},
		mobs = { "Spiky Carnivor", "Lumbering Carnivor", "Menacing Carnivor" },
	},

	{
		name = "Temple of Naga",
		color = 40,
		total = 1000,
		type = "daily",
		storage = 190092,
		storagecount = 190093,
		rewards = {
			{"exp", 30000000},
			{19082, 25},
		},
		mobs = { "Naga Warrior", "Naga Archer", "Makara" },
	},
	{
		name = "Fafnar Cultists",
		color = 40,
		total = 1000,
		type = "daily",
		storage = 190094,
		storagecount = 190095,
		rewards = {
			{"exp", 30000000},
			{19082, 25},
		},
		mobs = { "Black Sphinx Acolyte", "Burning Gladiator", "Priestess of the Wild Sun" },
	},
	{
		name = "Ingol Mutants",
		color = 40,
		total = 1000,
		type = "daily",
		storage = 190096,
		storagecount = 190097,
		rewards = {
			{"exp", 30000000},
			{19082, 25},
		},
		mobs = { "Liodile", "Harpy", "Boar Man", "Carnivostrich", "Rhindeer", "Crape Man" },
	},
	{
		name = "Issavi Surface",
		color = 40,
		total = 1000,
		type = "daily",
		storage = 190098,
		storagecount = 190099,
		rewards = {
			{"exp", 30000000},
			{19082, 25},
		},
		mobs = { "Adult Goanna", "Young Goanna", "Feral Sphinx", "Manticore", "Sphinx", "Lamassu" },
	},
	{
		name = "Nightmare Isles",
		color = 40,
		total = 1000,
		type = "daily",
		storage = 190100,
		storagecount = 190101,
		rewards = {
			{"exp", 30000000},
			{19082, 25},
		},
		mobs = { "Retching Horror", "Choking Fear" },
	},
	{
		name = "Roshamuul Prison",
		color = 40,
		total = 1000,
		type = "daily",
		storage = 190102,
		storagecount = 190103,
		rewards = {
			{"exp", 30000000},
			{19082, 25},
		},
		mobs = { "Demon Outcast", "Dark Torturer", "Betrayed Wraith", "Blightwalker", "Hellhound" },
	},
	{
		name = "The Wreckoning",
		color = 40,
		total = 1000,
		type = "daily",
		storage = 190104,
		storagecount = 190105,
		rewards = {
			{"exp", 30000000},
			{19082, 25},
		},
		mobs = { "Pirat Mate", "Pirat Bombardier", "Pirat Cutthroat", "Pirat Scoundrel" },
	},
	{
		name = "Exotic Cave",
		color = 40,
		total = 1000,
		type = "daily",
		storage = 190108,
		storagecount = 190109,
		rewards = {
			{"exp", 30000000},
			{19082, 25},
		},
		mobs = { "Exotic Bat", "Exotic Cave Spider" },
	},
	{
		name = "The Secret Library",
		color = 40,
		total = 2000,
		type = "daily",
		storage = 190110,
		storagecount = 190111,
		rewards = {
			{"exp", 30000000},
			{19082, 50},
		},
		mobs = { "Burning Book", "Icecold Book", "Animated Feather", "Ink Blob", "Squid Warden", "Guardian Of Tales", "Rage Squid", "Energetic Book", "Flying Book", "Knowledge Elemental", "Brain Squid", "Energuardian Of Tales", "Cursed Book", "Biting Book" },
	},
	{
		name = "Monster Graveyard",
		color = 40,
		total = 1000,
		type = "daily",
		storage = 190112,
		storagecount = 190113,
		rewards = {
			{"exp", 30000000},
			{19082, 25},
		},
		mobs = { "Sulphider", "Sulphur Spouter", "Nighthunter", "Stalking Stalk", "Undertaker" },
	},
	{
		name = "Crystal Enigma",
		color = 40,
		total = 1000,
		type = "daily",
		storage = 190114,
		storagecount = 190115,
		rewards = {
			{"exp", 30000000},
			{19082, 25},
		},
		mobs = { "Headpecker", "Mantosaurus", "Mercurial Menace", "Noxious Ripptor", "Shrieking Cry-Stal" },
	},
	{
		name = "Sparkling Pools",
		color = 40,
		total = 1000,
		type = "daily",
		storage = 190116,
		storagecount = 190117,
		rewards = {
			{"exp", 30000000},
			{19082, 25},
		},
		mobs = { "Emerald tortoise", "Gore Horn", "Gorerilla", "Hulking Prehemoth", "Sabretooth" },
	},
	{
		name = "Claustrophobic Inferno",
		color = 40,
		total = 3000,
		type = "once",
		storage = 190040,
		storagecount = 190041,
		rewards = {
			{"exp", 100000000},
			{34109, 1},
			{19082, 250},
		},
		mobs = { "Brachiodemon", "Infernal Demon", "Infernal Phantom" },
	},
	{
		name = "Rotten Wasteland",
		color = 40,
		total = 3000,
		type = "once",
		storage = 190120,
		storagecount = 190121,
		rewards = {
			{"exp", 100000000},
			{43898, 1},
			{19082, 250},
		},
		mobs = { "Branchy Crawler", "Mould Phantom", "Rotten Golem" },
	},
	{
		name = "Ebb and Flow",
		color = 40,
		total = 3000,
		type = "once",
		storage = 190122,
		storagecount = 190123,
		rewards = {
			{"exp", 100000000},
			{39546, 1},
			{19082, 50},
		},
		mobs = { "Bony Sea Devil", "Turbulent Elemental", "Capricious Phantom" },
	},
	{
		name = "Furious Crater",
		color = 40,
		total = 1000,
		type = "daily",
		storage = 190124,
		storagecount = 190125,
		rewards = {
			{"exp", 30000000},
			{19082, 50},
		},
		mobs = { "Courage Leech", "VIbrant Phantom", "Cloak of Terror" },
	},
	{
		name = "Mirrored Nightmare",
		color = 40,
		total = 2000,
		type = "daily",
		storage = 190126,
		storagecount = 190127,
		rewards = {
			{"exp", 30000000},
			{19082, 50},
		},
		mobs = { "Druid's Apparition", "Knight's Apparition", "Many Faces", "Distorted Phantom", "Paladin's Apparition", "Sorcerer's Apparition" },
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