-----------------------------------------
-- ID: 5210
-- Item: Bowl of Adamantoise Soup
-- Food Effect: 180Min, All Races
-----------------------------------------
-- Strength -7
-- Dexterity -7
-- Agility -7
-- Vitality -7
-- Intelligence -7
-- Mind -7
-- Charisma -7
-----------------------------------------
require("scripts/globals/status")
-----------------------------------------

function onItemCheck(target)
    local result = 0
    if (target:hasStatusEffect(dsp.effect.FOOD) == true or target:hasStatusEffect(dsp.effect.FIELD_SUPPORT_FOOD) == true) then
        result = 246
    end
    return result
end

function onItemUse(target)
    target:addStatusEffect(dsp.effect.FOOD,0,0,10800,5210)
end

function onEffectGain(target,effect)
    target:addMod(dsp.mod.STR, -7)
    target:addMod(dsp.mod.DEX, -7)
    target:addMod(dsp.mod.AGI, -7)
    target:addMod(dsp.mod.VIT, -7)
    target:addMod(dsp.mod.INT, -7)
    target:addMod(dsp.mod.MND, -7)
    target:addMod(dsp.mod.CHR, -7)
end

function onEffectLose(target, effect)
    target:delMod(dsp.mod.STR, -7)
    target:delMod(dsp.mod.DEX, -7)
    target:delMod(dsp.mod.AGI, -7)
    target:delMod(dsp.mod.VIT, -7)
    target:delMod(dsp.mod.INT, -7)
    target:delMod(dsp.mod.MND, -7)
    target:delMod(dsp.mod.CHR, -7)
end
