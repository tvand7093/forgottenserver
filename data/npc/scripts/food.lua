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

shopModule:addSellableItem({'meat'}, 2666, 2,'meat')
shopModule:addSellableItem({'salmon'}, 2668, 2,'salmon')
shopModule:addSellableItem({'ham'}, 2671, 4, 1,'ham')
shopModule:addSellableItem({'ham'}, 2671, 4, 1,'ham')
shopModule:addSellableItem({'blueberry'}, 2677, 1,'blueberry')
shopModule:addSellableItem({'cherry'}, 2678, 1,'cherry')
shopModule:addSellableItem({'carrot'}, 2684, 1,'carrot')
shopModule:addSellableItem({'cookie'}, 2687, 1,'cookie')
shopModule:addSellableItem({'bread'}, 2689, 2,'bread')
shopModule:addSellableItem({'egg'}, 2695, 1,'egg')
shopModule:addSellableItem({'green perch'}, 7159, 100,'green perch')
shopModule:addSellableItem({'northern pike'}, 2669, 100,'northern pike')
shopModule:addSellableItem({'rainbow trout'}, 7158, 100,'rainbow trout')
shopModule:addSellableItem({'marlin'}, 7963, 800,'marlin') 
shopModule:addSellableItem({'ectoplasmic sushi'}, 12637, 300,'ectoplasmic sushi')
shopModule:addSellableItem({'wood mushroom'}, 2791, 15, 'wood mushroom')
shopModule:addSellableItem({'walnut'}, 7909, 80, 'walnut')
shopModule:addSellableItem({'green mushroom'}, 2796, 100, 'green mushroom')
shopModule:addSellableItem({'dark mushroom'}, 2792, 100, 'dark mushroom') 
shopModule:addSellableItem({'orange mushroom'}, 2790, 150, 'orange mushroom')
shopModule:addSellableItem({'fire mushroom'}, 2795, 200, 'fire mushroom')

shopModule:addBuyableItem({'meat'}, 2666, 5, 'meat')
shopModule:addBuyableItem({'fish'}, 2667, 5,'fish')
shopModule:addBuyableItem({'salmon'}, 2668, 6, 'salmon')
shopModule:addBuyableItem({'ham'}, 2671, 8, 'ham')
shopModule:addBuyableItem({'dragon ham'}, 2671, 25,'dragon ham')
shopModule:addBuyableItem({'pear'}, 2673, 5,'pear')
shopModule:addBuyableItem({'red apple'}, 2674, 3,'red apple')
shopModule:addBuyableItem({'orange'}, 2675, 10,'orange')
shopModule:addBuyableItem({'banana'}, 2676, 5,'banana')
shopModule:addBuyableItem({'blueberry'}, 2677, 1, 'blueberry')
shopModule:addBuyableItem({'cherry'}, 2678, 1, 'cherry')
shopModule:addBuyableItem({'strawberry'}, 2680, 2, 'strawberry')
shopModule:addBuyableItem({'grapes'}, 2681, 3, 'grapes')
shopModule:addBuyableItem({'melon'}, 2682, 8, 'melon')
shopModule:addBuyableItem({'pumpkin'}, 2683, 10, 'pumpkin')
shopModule:addBuyableItem({'carrot'}, 2684, 3, 'carrot')
shopModule:addBuyableItem({'tomato'}, 2685, 5, 'tomato')
shopModule:addBuyableItem({'corncob'}, 2686, 3, 'corncob')
shopModule:addBuyableItem({'cookie'}, 2687, 2, 'cookie')
shopModule:addBuyableItem({'bread'}, 2689, 4, 'bread')
shopModule:addBuyableItem({'roll'}, 2690, 2, 'roll')
shopModule:addBuyableItem({'brown bread'}, 2691, 3, 'brown bread')
shopModule:addBuyableItem({'egg'}, 2695, 2, 'egg')
shopModule:addBuyableItem({'cheese'}, 2696, 6, 'cheese')
shopModule:addBuyableItem({'white mushroom'}, 2787, 6, 'white mushroom')
shopModule:addBuyableItem({'red mushroom'}, 2788, 12, 'red mushroom')
shopModule:addBuyableItem({'brown mushroom'}, 2789, 10, 'brown mushroom')
shopModule:addBuyableItem({'mango'}, 5097, 10, 'mango')
shopModule:addBuyableItem({'cake'}, 6278, 50,'cake')
shopModule:addBuyableItem({'party cake'}, 6280, 50, 'party cake')
shopModule:addBuyableItem({'valentine/s cake'}, 6393, 100, 'valentine/s cake')
shopModule:addBuyableItem({'potato'}, 8838, 4,,'potato')
shopModule:addBuyableItem({'plum'}, 8839, 3, 'plum')
shopModule:addBuyableItem({'raspberry'}, 8840, 1, 'raspberry')
shopModule:addBuyableItem({'lemon'}, 8841, 3, 'lemon')
shopModule:addBuyableItem({'cucumber'}, 8842, 3, 'cucumber')
shopModule:addBuyableItem({'onion'}, 8843, 2, 'onion')
shopModule:addBuyableItem({'jalapeno pepper'}, 8844, 2, 'jalapeno pepper')
shopModule:addBuyableItem({'beetroot'}, 8845, 2, 'beetroot')
shopModule:addBuyableItem({'cauliflower'}, 12418, 4, 'cauliflower')
shopModule:addBuyableItem({'broccoli'}, 12417, 3, 'broccoli')
shopModule:addBuyableItem({'pineapple'}, 12415, 12, 'pineapple')
shopModule:addBuyableItem({'bulb of garlic'}, 9114, 3, 'bulb of garlic')
shopModule:addBuyableItem({'beetroot'}, 8845, 2, 'beetroot')
shopModule:addBuyableItem({'aubergine'}, 12416, 8,'aubergine')
shopModule:addBuyableItem({'lemon'}, 8841, 3,'lemon')
shopModule:addBuyableItem({'dragonfruit'}, 12638, 5,'dragonfruit')










npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
