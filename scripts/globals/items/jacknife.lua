-----------------------------------------
-- ID: 5123
-- Item: Jacknife
-- Food Effect: 5Min, Mithra only
-----------------------------------------
-- Dexterity -5
-- Vitality 4
-- Defence 16% Cap 50
-----------------------------------------
require("scripts/globals/status")
-----------------------------------------

function onItemCheck(target)
    local result = 0
    if (target:getRace() ~= 7) then
        result = 247
    end
    if (target:getMod(dsp.mod.EAT_RAW_FISH) == 1) then
        result = 0
    end
    if (target:hasStatusEffect(dsp.effect.FOOD) == true or target:hasStatusEffect(dsp.effect.FIELD_SUPPORT_FOOD) == true) then
        result = 246
    end
    return result
end

function onItemUse(target)
    target:addStatusEffect(dsp.effect.FOOD,0,0,300,5123)
end

function onEffectGain(target, effect)
    target:addMod(dsp.mod.DEX, -5)
    target:addMod(dsp.mod.VIT, 4)
    target:addMod(dsp.mod.FOOD_DEFP, 16)
    target:addMod(dsp.mod.FOOD_DEF_CAP, 50)
end

function onEffectLose(target, effect)
    target:delMod(dsp.mod.DEX, -5)
    target:delMod(dsp.mod.VIT, 4)
    target:delMod(dsp.mod.FOOD_DEFP, 16)
    target:delMod(dsp.mod.FOOD_DEF_CAP, 50)
end