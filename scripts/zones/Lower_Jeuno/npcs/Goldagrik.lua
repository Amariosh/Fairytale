-----------------------------------
-- Area: Lower Jeuno
--  NPC: Goldagrik
-- Standard Info NPC
-----------------------------------
package.loaded["scripts/zones/Lower_Jeuno/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Lower_Jeuno/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    player:startEvent(20006);
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;
