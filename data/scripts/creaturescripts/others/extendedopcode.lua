local OPCODE_LANGUAGE    = 1
local OPCODE_BATTLEPASS  = 150

local extendedOpcode = CreatureEvent("ExtendedOpcode")
function extendedOpcode.onExtendedOpcode(player, opcode, buffer)
    if opcode == OPCODE_LANGUAGE then
        -- language opcode received

    elseif opcode == OPCODE_BATTLEPASS then
        local ok, data = pcall(json.decode, buffer)
        if not ok or type(data) ~= "table" then
            print(string.format("[BattlePass] Bad JSON from %s: %s", player:getName(), tostring(buffer)))
            return true
        end

        local action = data.action
        if action == "open_request" then
            BattlePass.sendUpdate(player)
        elseif action == "buy_elite" then
            BattlePass.buyElite(player)
        elseif action == "claim" then
            local tier  = tonumber(data.tier)
            local track = data.track
            if tier and (track == "free" or track == "elite") then
                BattlePass.claimReward(player, tier, track)
            end
        end
    end
    return true
end
extendedOpcode:register()

local login = CreatureEvent("ExtendedOpcodeLogin")
function login.onLogin(player)
    player:registerEvent("ExtendedOpcode")
    return true
end
login:register()
