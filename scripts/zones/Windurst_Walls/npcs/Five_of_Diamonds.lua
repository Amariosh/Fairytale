-----------------------------------
-- Area: Windurst Walls
--   NPC: Five of Diamonds
-- Type: Standard NPC
-- !pos -220.954 -0.001 -122.708 239
--
-- Auto-Script: Requires Verification (Verfied by Brawndo)
-----------------------------------
package.loaded["scripts/zones/Windurst_Walls/TextIDs"] = nil;
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    player:startEvent(266);
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;
