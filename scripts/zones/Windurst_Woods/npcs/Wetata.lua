-----------------------------------
-- Area: Windust Woods
--  NPC: Wetata
-- Trust: NPC
-----------------------------
package.loaded["scripts/zones/Windurst_Woods/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Windurst_Woods/TextIDs");
require("scripts/globals/keyitems");
require("scripts/globals/settings");
-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
		if (player:getNation() == 2) and (player:hasKeyItem(2497))then
			count = trade:getItemCount();
			cipher_of_darrcuilns_alter_ego = trade:hasItemQty(10183,1);
			player:startEvent(862);
		end
end; 

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
	if (player:getNation() == 2) and (player:hasKeyItem(2497) == false) then
		player:startEvent(863);
	else if (player:getNation() == 2) and (player:hasKeyItem(2497)) then
		player:startEvent(868);
		end
	end
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)

end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
	if (option == 1) then
		else if (csid == 863) then
		player:addKeyItem(2497);
		player:addKeyItem(2496);
		player:messageSpecial(KEYITEM_OBTAINED,2497);
		player:messageSpecial(KEYITEM_OBTAINED,2496);
		end
	end
	if (cipher_of_darrcuilns_alter_ego == true and count == 1) then
		else if (csid == 862) then
		player:tradeComplete();
		player:addSpell(991);
		end
	end
	if (option == 2) then
		else if (csid == 863) then
		player:startEvent(861);
		end
	end
end;