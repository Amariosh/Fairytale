-----------------------------------
-- Area: Western Altepa Desert
--  NPC: <this space intentionally left blank>
-- !pos -152 -16 20 125
-----------------------------------
package.loaded["scripts/zones/Western_Altepa_Desert/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Western_Altepa_Desert/TextIDs");
require("scripts/globals/npc_util");
-----------------------------------

function onTrade(player,npc,trade)
    if (player:getVar("RELIC_IN_PROGRESS") == 18287 and npcUtil.tradeHas(trade, {1451, 1575, 1589, 18287})) then -- currency, shard, necropsyche, stage 4
        player:startEvent(205, 18288);
    end
end;

function onTrigger(player,npc)
    player:messageSpecial(NOTHING_OUT_OF_ORDINARY);
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
    if (csid == 205 and npcUtil.giveItem(player, {18288, {1450, 30}})) then
        player:confirmTrade();
        player:setVar("RELIC_IN_PROGRESS", 0);
    end
end;
