-----------------------------------
-- Area: RoMaeve
--  MOB: Killing Weapon
-----------------------------------
require("scripts/globals/fieldsofvalor");
-----------------------------------

function onMobDeath(mob, player, isKiller)
    checkRegime(player,mob,119,1);
end;
