# Ungoldify
execute if block ~ ~ ~ #drakoncore:water_type run function dc_midas:ungoldify/lower_half
execute if block ~ ~ ~ #drakoncore:waterloggable[waterlogged=true] run function dc_midas:ungoldify/lower_half
execute if block ~ ~1 ~ #drakoncore:water_type run function dc_midas:ungoldify/upper_half_and_held
execute if block ~ ~1 ~ #drakoncore:waterloggable[waterlogged=true] run function dc_midas:ungoldify/upper_half_and_held
execute if entity @s[tag=dc_isRaining] run function dc_midas:ungoldify/all
execute if entity @s[tag=dc_midasHealed] run function dc_midas:midas_heal_effect