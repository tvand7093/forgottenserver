local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)			npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()					npcHandler:onThink()					end

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)
shopModule:addBuyableItem({'brown backpack'}, 1988, 20, 1,'brown backpack') 
shopModule:addBuyableItem({'beach backpack'}, 5949, 20, 1,'beach backpack') 
shopModule:addBuyableItem({'blue backpack'}, 2002, 20, 1,'blue backpack') 
shopModule:addBuyableItem({'brocade backpack'}, 9774, 20, 1,'brocade backpack') 
shopModule:addBuyableItem({'camouflage backpack'}, 3940, 20, 1,'camouflage backpack')
shopModule:addBuyableItem({'golden backpack'}, 2004, 20, 1,'golden backpack')
shopModule:addBuyableItem({'green backpack'}, 1998, 20, 1,'green backpack')
shopModule:addBuyableItem({'grey backpack'}, 2003, 20, 1,'grey backpack')
shopModule:addBuyableItem({'orange backpack'}, 10519, 20, 1,'orange backpack')
shopModule:addBuyableItem({'purple backpack'}, 2001, 20, 1,'purple backpack')
shopModule:addBuyableItem({'red backpack'}, 2000, 20, 1,'red backpack')
shopModule:addBuyableItem({'yellow backpack'}, 1999, 20, 1,'yellow backpack')




shopModule:addBuyableItem({'baking tray'}, 2561, 20, 1,'baking tray')
shopModule:addBuyableItem({'cleaver'}, 2568, 15, 1,'cleaver') 
shopModule:addBuyableItem({'cup'}, 2013, 2, 1,'cup')
shopModule:addBuyableItem({'fork'}, 2564, 10, 1,'fork')
shopModule:addBuyableItem({'jug'}, 2014, 10, 1,'jug')
shopModule:addBuyableItem({'kitchen knife'}, 2566, 10, 1,'kitchen knife')
shopModule:addBuyableItem({'mug'}, 2012, 4, 1,'mug')
shopModule:addBuyableItem({'oven spatula'}, 2569, 12, 1,'oven spatula')
shopModule:addBuyableItem({'pan'}, 2563, 20, 1,'pan')
shopModule:addBuyableItem({'plate'}, 2035, 6, 1,'plate')
shopModule:addBuyableItem({'rolling pin'}, 2570, 12, 1,'rolling pin')
shopModule:addBuyableItem({'spoon'}, 2565, 10, 1,'spoon')
shopModule:addBuyableItem({'wooden spoon'}, 2567, 5, 1,'wooden spoon')

shopModule:addBuyableItem({'shovel'}, 2554, 10, 1,'shovel')
shopModule:addBuyableItem({'pick'}, 2553, 10, 1,'pick')
shopModule:addBuyableItem({'rope'}, 2120, 10, 1,'rope')
shopModule:addBuyableItem({'fishing rod'}, 2580, 10, 1,'fishing rod')
shopModule:addBuyableItem({'worm'}, 3876, 10, 1,'worm')



shopModule:addSellableItem({'Crystal Pedestal'}, 9976, 500, 1,'Crystal Pedestal')










npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())