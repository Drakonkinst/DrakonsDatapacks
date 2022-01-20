execute if predicate drakoncore:is_raining if predicate drakoncore:under_sky run tag @s add dc_inRain
execute unless data entity @s SelectedItem unless entity @s[tag=dc_inRain] unless block ~ ~1 ~ #dc_midas:water_type unless block ~ ~1 ~ #drakoncore:waterloggable[waterlogged=true] as @e[nbt={HurtTime:10s},limit=1,sort=nearest] at @s run function dc_midas:chance_goldify_armor
tag @s remove dc_inRain
advancement revoke @s only dc_midas:midas_strike