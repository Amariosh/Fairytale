-----------------------------------
-- Area: Kazham
--  NPC: Soun Abralah
-- Standard Info NPC
-----------------------------------
package.loaded["scripts/zones/Kazham/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Kazham/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    player:startEvent(101);
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;
