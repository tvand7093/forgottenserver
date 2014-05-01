function onSay(cid, words, param, channel)
    local p = Player(cid)
	local balance = p:getBankBalance()

    if(words == '!balance') then
		showModalWindow(cid, "Banking", "Your balance is " .. balance .. ".", "Done", nil)
    elseif(words == "!deposit" and param ~= "") then
		showModalWindow(cid, 
	end

    return TRUE
end