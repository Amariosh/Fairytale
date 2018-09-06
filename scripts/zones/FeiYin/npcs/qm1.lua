-----------------------------------
-- Area: FeiYin
--  NPC: qm1 (???)
-- Involved In Quest: Pieuje's Decision
-- !pos -55 -16 69 204
-----------------------------------
package.loaded["scripts/zones/FeiYin/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/FeiYin/TextIDs");
require("scripts/zones/FeiYin/MobIDs");
require("scripts/globals/npc_util");
require("scripts/globals/quests");
-----------------------------------

function onTrade(player,npc,trade)
    if (
        player:getQuestStatus(SANDORIA,PIEUJE_S_DECISION) == QUEST_ACCEPTED and
        npcUtil.tradeHas(trade, 1098) and -- Tavnazia Bell
        not player:hasItem(13842) and -- Tavnazian Mask
        not GetMobByID(ALTEDOUR_I_TAVNAZIA):isSpawned()
    ) then
        player:confirmTrade();
        player:messageSpecial(SENSE_OF_FOREBODING);
        SpawnMob(ALTEDOUR_I_TAVNAZIA):updateClaim(player);
    end
end;

function onTrigger(player,npc)
    player:messageSpecial(NOTHING_OUT_OF_ORDINARY);
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;