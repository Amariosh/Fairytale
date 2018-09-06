-----------------------------------
-- Area: Northern San d'Oria
--  NPC: Maurinne
-- Type: Standard Dialogue NPC
-- !pos -127.185 0.000 179.193 231
--
-----------------------------------
package.loaded["scripts/zones/Northern_San_dOria/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Northern_San_dOria/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    player:showText(npc,MAURINNE_DIALOG);
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;
