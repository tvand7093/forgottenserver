
https = require "ssl.https"

function onSay(cid, words, param, channel)
    local storage = 6708 -- (You can change the storage if its already in use)
    local delaytime = 30 -- (Exhaust In Seconds.)
    local p = Player(cid)

    if(param == '') then
        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "Command param required.")
        return true
    end
    if (getPlayerStorageValue(cid, storage) <= os.time()) then
	doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Your feature request has been received successfully!")
        local content = "Player Name: " .. p:getName() .. "<br/>"	
		.. "Player is a " .. p:getVocation():getName() .. "<br/>" 
        	.. "Player requested a feature: " .. param .. "<br/>"
		.. "Timestamp: " .. os.date("%I:%M:%S %p %a %b %d, %Y")
	
	notifyGithub(param, content)

	setPlayerStorageValue(cid,storage,os.time()+delaytime)
    else
        doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING, "You have to wait "..getPlayerStorageValue(cid, storage) - os.time().." seconds to report again.")
    end
    return TRUE
end

function notifyGithub(title, content)
        local response = {}
	local body = string.format("{ %q : %q, %q: %q, %q : [%q] }",
		"title", title, "body", content, "labels", "enhancement")
        local result, code, resultHeaders = https.request{
            url= 'https://api.github.com/repos/tvand7093/forgottenserver/issues',
            method = "POST",
            headers = {
  		["content-length"] = string.len(body),
		["Conent-Type"] = "application/json",
		["Accept"] = "application/vnd.github.v3+json",
		["Authorization"] = 'token 1ecc592310622002ba49473e420a599c5e163aae',
	    },            
	    source = ltn12.source.string(body),
	    sink = ltn12.sink.table(response)            
        }
end
