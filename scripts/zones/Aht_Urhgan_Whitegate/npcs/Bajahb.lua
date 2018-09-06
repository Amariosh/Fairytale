-----------------------------------
-- Area: Aht Urhgan Whitegate
--  NPC: Bajahb
-- Standard Merchant NPC
-----------------------------------
package.loaded["scripts/zones/Aht_Urhgan_Whitegate/TextIDs"] = nil
-----------------------------------
require("scripts/zones/Aht_Urhgan_Whitegate/TextIDs")
require("scripts/globals/shop")

function onTrade(player,npc,trade)
end

function onTrigger(player,npc)
    local stock =
    {
        12424, 10260,    -- Iron Mask
        12552, 15840,    -- Chainmail
        12680,  8460,    -- Chain Mittens
        12808, 12600,    -- Chain Hose
        12936,  7740     -- Greaves
    }

    player:showText(npc, BAJAHB_SHOP_DIALOG)
    dsp.shop.general(player, stock)
end

function onEventUpdate(player,csid,option)
end

function onEventFinish(player,csid,option)
end