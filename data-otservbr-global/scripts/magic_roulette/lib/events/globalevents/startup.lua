--[[
	Description: This file is part of Roulette System (refactored)
	Author: Lyµ
	Discord: Lyµ#8767
	Adaptado para o Canary:  NvSo#4349
]]

local Roulette = dofile(DATA_DIRECTORY .. '/scripts/magic_roulette/roulette.lua')

local globalevent = GlobalEvent()

function globalevent.onStartup()
	Roulette:startup()
end

globalevent:register()
