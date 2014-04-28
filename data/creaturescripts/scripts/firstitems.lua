
function onLogin(cid)
local firstItems = {2530,2398,2643,2480,2485,2649,1988,2554,2120}
	local player = Player(cid)
	
	if player:getLastLoginSaved() == 0 then
		for i = 1, #firstItems do
			player:addItem(firstItems[i], 1)
		end
		player:addItem(player:getSex() == 0 and 2651 or 2650, 1)
		player:addItem(1987, 1):addItem(2674, 1)
	end

	return true
end

