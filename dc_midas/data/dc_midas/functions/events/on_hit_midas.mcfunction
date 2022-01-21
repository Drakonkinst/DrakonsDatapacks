execute if predicate drakoncore:is_raining if predicate drakoncore:under_sky run tag @s add dc_inRain
execute unless entity @s[tag=dc_inRain] unless block ~ ~1 ~ #drakoncore:water_type unless block ~ ~1 ~ #drakoncore:waterloggable[waterlogged=true] if predicate dc_midas:chance_hit_midas run function dc_midas:goldify/mainhand
tag @s remove dc_inRain
advancement revoke @s only dc_midas:hit_midas