local dust = Action()

function dust.onUse(player, item, fromPosition, target, toPosition, isHotkey)
local amount = 100 -- quantidade de dusts que o item vai dar
local totalDusts = player:getForgeDusts()
local limitDusts = 200 -- quantidade maxima de dusts
  
	if (totalDusts + amount) < limitDusts then
		player:addForgeDusts(amount)
	  
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have received "..amount.." dusts")
		item:remove(1)
		return true
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "It is not possible to have more than 200 dusts")
	end
end

dust:id(23682) -- ID do item a ser transformado em dusts
dust:register()
