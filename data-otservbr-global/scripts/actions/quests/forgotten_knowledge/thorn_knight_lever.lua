local config = {
	boss = {
		name = "The Enraged Thorn Knight",
		position = Position(32624, 32880, 14),
	},
	requiredLevel = 250,
	playerPositions = {
		{ pos = Position(32657, 32877, 14), teleport = Position(32624, 32886, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32657, 32878, 14), teleport = Position(32624, 32886, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32657, 32879, 14), teleport = Position(32624, 32886, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32657, 32880, 14), teleport = Position(32624, 32886, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32657, 32881, 14), teleport = Position(32624, 32886, 14), effect = CONST_ME_TELEPORT },
	},
	specPos = {
		from = Position(32613, 32869, 14),
		to = Position(32636, 32892, 14),
	},
	exit = Position(32678, 32888, 14),
}

	

local lever = BossLever(config)
lever:position(Position(32657, 32876, 14))
lever:register()

