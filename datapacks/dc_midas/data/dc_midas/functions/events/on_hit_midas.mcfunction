execute if predicate drakoncore:is_raining if predicate drakoncore:under_sky run tag @s add dc_inRain
execute unless entity @s[tag=dc_inRain] positioned ~ ~1 ~ unless predicate drakoncore:in_water_or_cauldron if predicate dc_midas:chance_hit_midas positioned ~ ~-1 ~ run function dc_midas:goldify/mainhand
tag @s remove dc_inRain
advancement revoke @s only dc_midas:hit_midas