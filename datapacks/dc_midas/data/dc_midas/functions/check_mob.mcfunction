# Ungoldify
execute if predicate drakoncore:in_water_or_cauldron run function dc_midas:ungoldify/lower_half
execute positioned ~ ~1 ~ if predicate drakoncore:in_water_or_cauldron positioned ~ ~-1 ~ run function dc_midas:ungoldify/upper_half_and_held
execute if entity @s[tag=dc_isRaining] run function dc_midas:ungoldify/all
execute if entity @s[tag=dc_midasHealed] run function dc_midas:midas_heal_effect