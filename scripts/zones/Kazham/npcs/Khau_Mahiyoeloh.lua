-----------------------------------
-- Area: Kazham
--  NPC: Khau Mahiyoeloh
-- Standard Info NPC
-----------------------------------
package.loaded["scripts/zones/Kazham/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Kazham/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    if (player:getVar("BathedInScent") == 1) then
        player:startEvent(165); -- scent from Blue Rafflesias
    else
        player:startEvent(60);
    end
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;
