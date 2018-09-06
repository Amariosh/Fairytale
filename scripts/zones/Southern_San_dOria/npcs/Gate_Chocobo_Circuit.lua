-----------------------------------
-- Area: Southern San dOria
--  NPC: Palabelle
-- Circut NPC
-----------------------------------
package.loaded["scripts/zones/Southern_San_dOria/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Southern_San_dOria/TextIDs");
require("scripts/globals/zone")
require("scripts/globals/teleports")
-----------------------------------
function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
		player:startEvent(882);
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
		if (csid == 882 and option == 1) then
        player:setPos(-386.318,-5,-469.356,255,70);
	end
end;