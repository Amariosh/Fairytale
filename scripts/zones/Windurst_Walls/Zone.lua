-----------------------------------
--
-- Zone: Windurst_Walls (239)
--
-----------------------------------
package.loaded["scripts/zones/Windurst_Walls/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Windurst_Walls/TextIDs");
require("scripts/globals/settings");
require("scripts/globals/keyitems");
require("scripts/globals/missions");
require("scripts/globals/quests");
-----------------------------------

function onInitialize(zone)
    zone:registerRegion(1, -2,-17,140, 2,-16,142);
end;

function onZoneIn(player,prevZone)
    local cs = -1;
    -- MOG HOUSE EXIT
    if (player:getXPos() == 0 and player:getYPos() == 0 and player:getZPos() == 0) then
        position = math.random(1,5) - 123;
        player:setPos(-257.5,-5.05,position,0);
        if (player:getMainJob() ~= player:getVar("PlayerMainJob")) then
            cs = 30004;
        end
        player:setVar("PlayerMainJob",0);
    elseif (ENABLE_ASA == 1 and player:getCurrentMission(ASA) == A_SHANTOTTO_ASCENSION
        and (prevZone == 238 or prevZone == 241) and player:getMainLvl()>=10) then
        cs = 510;
    elseif (player:getCurrentMission(WINDURST) == MOON_READING and player:getVar("MissionStatus") == 4) then
        cs = 443;
    end

    return cs;
end;

function onConquestUpdate(zone, updatetype)
    dsp.conq.onConquestUpdate(zone, updatetype)
end;

function onRegionEnter(player,region)
    switch (region:GetRegionID()): caseof
    {
        [1] = function (x)  -- Heaven's Tower enter portal
            player:startEvent(86);
        end,
    }
end;

function onRegionLeave(player,region)
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
    if (csid == 86) then
        player:setPos(0,0,-22.40,192,242);
    elseif (csid == 30004 and option == 0) then
        player:setHomePoint();
        player:messageSpecial(HOMEPOINT_SET);
    elseif (csid == 510) then
        player:startEvent(514);
    elseif (csid == 514) then
        player:completeMission(ASA,A_SHANTOTTO_ASCENSION);
        player:addMission(ASA,BURGEONING_DREAD);
        player:setVar("ASA_Status",0);
    elseif (csid == 443) then
        player:completeMission(WINDURST,MOON_READING);
        player:setVar("MissionStatus",0);
        player:setRank(10);
        player:addGil(GIL_RATE*100000);
        player:messageSpecial(GIL_OBTAINED,GIL_RATE*100000);
        player:addItem(183);
        player:messageSpecial(ITEM_OBTAINED,183);
        player:addTitle(dsp.title.VESTAL_CHAMBERLAIN);
    end
end;
