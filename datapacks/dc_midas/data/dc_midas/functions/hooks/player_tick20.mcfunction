execute if entity @s[tag=!dc_holdingUmbrella] if predicate drakoncore:is_raining if predicate drakoncore:under_sky run tag @s add dc_isRaining

# Ungoldify
execute if block ~ ~ ~ #drakoncore:water_type run function dc_midas:ungoldify/lower_half
execute if block ~ ~ ~ #drakoncore:waterloggable[waterlogged=true] run function dc_midas:ungoldify/lower_half
execute if block ~ ~1 ~ #drakoncore:water_type run function dc_midas:ungoldify/upper_half_and_held
execute if block ~ ~1 ~ #drakoncore:waterloggable[waterlogged=true] run function dc_midas:ungoldify/upper_half_and_held
execute if entity @s[tag=dc_isRaining,gamemode=!spectator] run function dc_midas:ungoldify/all

execute if entity @s[tag=dc_midas,gamemode=!spectator] run function dc_midas:midas_tick20
execute if entity @s[tag=dc_midasTouched,gamemode=!spectator] run function dc_midas:midas_touch_effect
execute if entity @s[tag=dc_midasHealed,gamemode=!spectator] run function dc_midas:midas_heal_effect

tag @s remove dc_isRaining