-----------------------------------
-- Area: FeiYin
--  MOB: Clockwork Pod
-----------------------------------
require("scripts/globals/keyitems");
-----------------------------------

function onMobSpawn(mob)
end;

function onMobDeath(mob, player, isKiller)

    -- Curses, Foiled A-Golem!?
    if (player:hasKeyItem(dsp.ki.SHANTOTTOS_NEW_SPELL)) then
        player:delKeyItem(dsp.ki.SHANTOTTOS_NEW_SPELL);
        player:addKeyItem(dsp.ki.SHANTOTTOS_EXSPELL);
    end

end;