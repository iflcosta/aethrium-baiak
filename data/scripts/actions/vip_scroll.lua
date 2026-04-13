-- VIP System â€” Activation Scrolls
-- These items grant VIP status to the player.
-- NOTE: Update the IDs below once they are defined in items.xml

local VIP_SCROLLS = {
    [24774] = { tier = 1, days = 30, name = "Bronze" },
    [24775] = { tier = 2, days = 30, name = "Silver" },
    [24776] = { tier = 3, days = 30, name = "Gold" }
}

local action = Action()

function action.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local config = VIP_SCROLLS[item:getId()]
    if not config then
        return false
    end

    -- Grant VIP status
    player:setVip(config.tier, config.days)
    
    -- Effects and Feedback
    player:getPosition():sendMagicEffect(CONST_ME_GIFT_WRAPS)
    player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 
        string.format("[VIP] You have activated %d days of VIP %s!", config.days, config.name))
    
    -- Remove the scroll
    item:remove(1)
    return true
end

for id, _ in pairs(VIP_SCROLLS) do
    action:id(id)
end

action:register()
