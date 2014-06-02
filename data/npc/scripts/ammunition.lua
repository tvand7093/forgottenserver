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
shopModule:addBuyableItem({'arrow'}, 2544, 3, 1,'arrow')
shopModule:addBuyableItem({'bolt'}, 2543, 4, 1,'bolt')
shopModule:addBuyableItem({'bow'}, 2456, 400, 1,'bow')
shopModule:addBuyableItem({'crossbow'}, 2455, 500, 1,'crossbow')
shopModule:addBuyableItem({'spear'}, 2389, 9, 1,'spear')
shopModule:addBuyableItem({'royal spear'}, 7378, 15, 1,'royal spear')
shopModule:addBuyableItem({'throwing knife'}, 2410, 25, 1,'throwing knife')
shopModule:addBuyableItem({'throwing star'}, 2399, 42, 1,'throwing star')

shopModule:addSellableItem({'bow'}, 2456, 100, 1,'bow')
shopModule:addSellableItem({'chain bolter'}, 8850, 40000, 1,'chain bolter')
shopModule:addSellableItem({'composite hornbow'}, 8855, 25000, 1,'composite hornbow')
shopModule:addSellableItem({'crossbow'}, 2455, 120, 1,'crossbow')
shopModule:addSellableItem({'hunting spear'}, 3965, 25, 1,'hunting spear')
shopModule:addSellableItem({'spear'}, 2389, 3, 1,'spear')
shopModule:addSellableItem({'throwing knife'}, 2410, 2, 1,'throwing knife')










npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())