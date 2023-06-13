execute if entity @s[tag=!dc_holdingUmbrella] if predicate drakoncore:is_raining if predicate drakoncore:under_sky run tag @s add dc_isRaining

# Ungoldify
execute if predicate drakoncore:in_water_or_cauldron run function dc_midas:ungoldify/lower_half
execute positioned ~ ~1 ~ if predicate drakoncore:in_water_or_cauldron positioned ~ ~-1 ~ run function dc_midas:ungoldify/upper_half_and_held
execute if entity @s[tag=dc_isRaining,gamemode=!spectator] run function dc_midas:ungoldify/all

execute if entity @s[tag=dc_midas,gamemode=!spectator] run function dc_midas:midas_tick20
execute if entity @s[tag=dc_midasTouched,gamemode=!spectator] run function dc_midas:midas_touch_effect
execute if entity @s[tag=dc_midasHealed,gamemode=!spectator] run function dc_midas:midas_heal_effect

tag @s remove dc_isRaining