function onUse(cid, item, fromPosition, itemEx, toPosition) 
	local config = {
	waterIds = {493, 4608, 4609, 4610, 4611, 4612, 4613, 4614, 4615, 4616, 4617, 4618, 4619, 4620, 4621, 4622, 4623, 4624, 4625},
	rateSkill = configManager.getNumber(configKeys.RATE_SKILL),
	allowFromPz = false,
	useWorms = true
	}

	local monsters = {"Quara Hydromancer", "Quara Constrictor", "Quara Mantassin", "Quara Pincher", "Quara Predator", "Serpent Spawn", "Wyrm", "Sea Serpent", "Titan Goddess of Water"}

	if(not isInArray(config.waterIds, itemEx.itemid)) then
		return false
	end
	local randsummon = 0

	if getPlayerLevel(cid) >= 5000 and getPlayerSkillLevel(cid, SKILL_FISHING) >= 100 then
		randsummon = math.random(0,9)
	elseif getPlayerLevel(cid) >= 5000 then
		randsummon = math.random(0,8)
	elseif getPlayerLevel(cid) >= 3000 then
		randsummon = math.random(0,6)
	elseif getPlayerLevel(cid) >= 1500 then
		randsummon = math.random(0,4)
	elseif getPlayerLevel(cid) >= 500 then
		randsummon = math.random(0,2)
	else
		doPlayerAddSkillTry(cid, SKILL_FISHING, config.rateSkill)
	end

	if randsummon == 0 then
		doPlayerAddSkillTry(cid, SKILL_FISHING, config.rateSkill)
	else
		doSummonCreature(monsters[randsummon], getCreaturePosition(cid))
		doPlayerAddSkillTry(cid, SKILL_FISHING, config.rateSkill)
	end
	

	doSendMagicEffect(toPosition, CONST_ME_LOSEENERGY)
	return true
end