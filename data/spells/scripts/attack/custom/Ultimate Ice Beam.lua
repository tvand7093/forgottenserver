--Ultimate Ice Beam-- DRUID ICE BEAM TIER 1

-- SpellCreator generated.

-- =============== COMBAT VARS ===============
-- Areas/Combat for 0ms
local combat0_Ice = createCombatObject()
setCombatParam(combat0_Ice, COMBAT_PARAM_EFFECT, CONST_ME_ICEATTACK)
setCombatParam(combat0_Ice, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ICE)
setCombatParam(combat0_Ice, COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
setCombatArea(combat0_Ice,createCombatArea({{1},
{1},
{1},
{1},
{1},
{3}}))
function getDmg_Ice(cid, level, maglevel)
	return (100+level+maglevel*15)*-1,(200+level+maglevel*15)*-1 
end
setCombatCallback(combat0_Ice, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Ice")
local dfcombat0_Ice = {CONST_ANI_ICE,0,5,0,4,0,3,0,2,0,1,0,6}

-- =============== CORE FUNCTIONS ===============
local function RunPart(c,cid,var,dirList,dirEmitPos,startDir) -- Part
	if (isCreature(cid)) then
		doCombat(cid, c, var)
		if (dirList ~= nil) then -- Emit distance effects
			local i = 2;
			while (i < #dirList) do
				if (startDir == 0) then -- N
					doSendDistanceShoot(dirEmitPos,{x=dirEmitPos.x-dirList[i],y=dirEmitPos.y-dirList[i+1],z=dirEmitPos.z},dirList[1])
				elseif (startDir == 2) then -- S
					doSendDistanceShoot(dirEmitPos,{x=dirEmitPos.x+dirList[i],y=dirEmitPos.y+dirList[i+1],z=dirEmitPos.z},dirList[1])
				elseif (startDir == 1) then -- E
					doSendDistanceShoot(dirEmitPos,{x=dirEmitPos.x+dirList[i+1],y=dirEmitPos.y+dirList[i],z=dirEmitPos.z},dirList[1])
				else -- W / Something weird happened
					doSendDistanceShoot(dirEmitPos,{x=dirEmitPos.x-dirList[i+1],y=dirEmitPos.y-dirList[i],z=dirEmitPos.z},dirList[1])
				end
				i = i + 2
			end		
		end
	end
end

function onCastSpell(cid, var)
	local startPos = getCreaturePosition(cid)
	local startDir = getCreatureLookDirection(cid)
	RunPart(combat0_Ice,cid,var,dfcombat0_Ice,startPos,startDir)
	return true
end