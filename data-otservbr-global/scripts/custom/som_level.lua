local somLevel = CreatureEvent("SomLevel")

function somLevel.onAdvance(player, skill, oldLevel, newLevel)
    if skill ~= SKILL_LEVEL then
        return true
    end
    
    if newLevel > oldLevel then
        player:getPosition():sendSingleSoundEffect(SOUND_EFFECT_TYPE_ACTION_LEVEL_ACHIEVEMENT, player:isInGhostMode() and nil or player)   
        return true
    end
    
    return true
end

somLevel:register()