local table = {
    ["Widow Queen"] = {price = 1000000, id = 1}, 
    ["Racing Bird"] = {price = 1000000, id = 2}, 
    ["War Bear"] = {price = 1000000, id = 3}, 
    ["Black Sheep"] = {price = 1000000, id = 4}, 
    ["Midnight Panther"] = {price = 1000000, id = 5}, 
    ["Draptor"] = {price = 1000000, id = 6}, 
    ["Titanica"] = {price = 1000000, id = 7}, 
    ["Tin Lizzard"] = {price = 1000000, id = 8}, 
    ["Blazebringer"] = {price = 1000000, id = 9}, 
    ["Rapid Boar"] = {price = 1000000, id = 10}, 
    ["Stampor"] = {price = 1000000, id = 11}, 
    ["Undead Cavebear"] = {price = 1000000, id = 12},
    ["Mule"] = {price = 1000000, id = 13},
    ["Tiger Slug"] = {price = 1000000, id = 14},
    ["Uniwheel"] = {price = 1000000, id = 15},
    ["Crystal Wolf"] = {price = 1000000, id = 16},
    ["War Horse"] = {price = 1000000, id = 17},
    ["Kingly Deer"] = {price = 1000000, id = 18},
    ["Tamed Panda"] = {price = 1000000, id = 19},
    ["Dramedary"] = {price = 1000000, id = 20},
    ["Sandstone Scorion"] = {price = 1000000, id = 21},
    ["Rented Horse 1"] = {price = 1000000, id = 22},
    ["Fire War Horse"] = {price = 1000000, id = 23},
    ["Shadow Draptor"] = {price = 1000000, id = 24},
    ["Rented Horse 2"] = {price = 1000000, id = 25},
    ["Rented Horse 3"] = {price = 1000000, id = 26},
	["Ladybug"] = {price = 1000000, id = 27},
	["Manta"] = {price = 1000000, id = 28},
	["Ironblight"] = {price = 1000000, id = 29},
	["Magma Crawler"] = {price = 1000000, id = 30},
	["Dragonling"] = {price = 1000000, id = 31},
	["Gnarlhound"] = {price = 1000000, id = 32},
	["Crimson Ray"] = {price = 1000000, id = 33},
	["Stealbeak"] = {price = 1000000, id = 34},
	["Water Buffalo"] = {price = 1000000, id = 35},
	["Armoured Scorpion"] = {price = 1000000, id = 36},
	["Armoured Dragonling"] = {price = 1000000, id = 37},
	["Armoured Cavebear"] = {price = 1000000, id = 38},
	["The Hellgrip"] = {price = 1000000, id = 39},
	["Lion"] = {price = 1000000, id = 40},
	["Golden Lion"] = {price = 1000000, id = 41},
	["Shock Head"] = {price = 1000000, id = 42}
} 
local keywordHandler = KeywordHandler:new() 
local npcHandler = NpcHandler:new(keywordHandler) 
NpcSystem.parseParameters(npcHandler) 
local talkState = {} 

function onCreatureAppear(cid)              npcHandler:onCreatureAppear(cid)            end 
function onCreatureDisappear(cid)           npcHandler:onCreatureDisappear(cid)         end 
function onCreatureSay(cid, type, msg)          npcHandler:onCreatureSay(cid, type, msg)        end 
function onThink()                  npcHandler:onThink()                    end 

function creatureSayCallback(cid, type, msg) 
    if(not npcHandler:isFocused(cid)) then 
        return false 
    end 

    local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid 
     if table[msg] then 
      local t = table[msg] 
      talkState[talkUser] = 1 
       if getPlayerPremiumDays(cid) >= 1 then 
        if not getPlayerMount(cid, t.id) then 
         if doPlayerRemoveMoney(cid, t.cena) then 
          doPlayerAddMount(cid, t.id) 
          selfSay("You lost "..t.price.." gp! for mount!", cid) 
          talkState[talkUser] = 0 
         else 
          selfSay("Sorry, you do not have enough money!", cid) 
          talkState[talkUser] = 0 
         end 
        else 
         selfSay("You already have this mount!", cid) 
         talkState[talkUser] = 0 
        end 
       else 
        selfSay("You must be Premium!", cid) 
        talkState[talkUser] = 0 
       end 
    else 
    selfSay('What? Please told me a correct name of mount!', cid) 
    talkState[talkUser] = 0 
   end 
   return true 
end 

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback) 
npcHandler:addModule(FocusModule:new())  