-----------------------------------
-- Area: Port Windurst
--  NPC: Pattel_Bacchel
-- Standard Info NPC
-----------------------------------
package.loaded["scripts/zones/Port_Windurst/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Port_Windurst/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    player:startEvent(876);
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;