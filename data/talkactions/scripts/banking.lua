function onSay(cid, words, param, channel)
    local p = Player(cid)
	local balance = p:getBankBalance()

    if(param == '') then
		showModalWindow(cid, "Banking", "Your balance is " .. balance .. ".", "Done", nil)
    end

    return TRUE
end