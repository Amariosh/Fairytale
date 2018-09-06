-----------------------------------
-- Area: Aht Urhgan Whitegate
--  NPC: Lageegee
-- Type: Assault Mission Giver
-- !pos 120.808 0.161 -30.435
-----------------------------------
package.loaded["scripts/zones/Aht_Urhgan_Whitegate/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/keyitems");
require("scripts/zones/Aht_Urhgan_Whitegate/TextIDs");
require("scripts/globals/besieged");
require("scripts/globals/missions");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    local rank = getMercenaryRank(player);
    local haveimperialIDtag;
    local assaultPoints = player:getAssaultPoint(PERIQIA_ASSAULT_POINT);

    if (player:hasKeyItem(dsp.ki.IMPERIAL_ARMY_ID_TAG)) then
        haveimperialIDtag = 1;
    else
        haveimperialIDtag = 0;
    end

--[[    if (rank > 0) then
        player:startEvent(276,rank,haveimperialIDtag,assaultPoints,player:getCurrentAssault());
    else]]
        player:startEvent(282); -- no rank
    --end
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
    if (csid == 276) then
        local selectiontype = bit.band(option, 0xF);
        if (selectiontype == 1) then
            -- taken assault mission
            player:addAssault(bit.rshift(option,4));
            player:delKeyItem(dsp.ki.IMPERIAL_ARMY_ID_TAG);
            player:addKeyItem(dsp.ki.PERIQIA_ASSAULT_ORDERS);
            player:messageSpecial(KEYITEM_OBTAINED,dsp.ki.PERIQIA_ASSAULT_ORDERS);
        elseif (selectiontype == 2) then
            -- purchased an item
            local item = bit.rshift(option,14);
            local itemID = 0;
            local price = 0;

            -- Copy/pasted from Famad, TODO: fill in the actual IDs/prices for Lageegee
            --[[if (item == 1) then
                itemID = 15972;
                price = 3000;
            elseif (item == 2) then
                itemID = 15777;
                price = 5000;
            elseif (item == 3) then
                itemID = 15523;
                price = 8000;
            elseif (item == 4) then
                itemID = 15886;
                price = 10000;
            elseif (item == 5) then
                itemID = 15492;
                price = 10000;
            elseif (item == 6) then
                itemID = 18583;
                price = 10000;
            elseif (item == 7) then
                itemID = 18388;
                price = 15000;
            elseif (item == 8) then
                itemID = 18417;
                price = 15000;
            elseif (item == 9) then
                itemID = 14940;
                price = 15000;
            elseif (item == 10) then
                itemID = 15690;
                price = 20000;
            elseif (item == 11) then
                itemID = 14525;
                price = 20000;
            else
                return;
            end

            player:addItem(itemID);
            player:messageSpecial(ITEM_OBTAINED,itemID);
            player:delAssaultPoint(LEBROS_ASSAULT_POINT,price);]]
        end
    end
end;