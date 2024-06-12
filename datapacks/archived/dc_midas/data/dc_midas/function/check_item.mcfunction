execute unless predicate dc_midas:midas_item_entity run tag @s add dc_notMidas
execute if entity @s[tag=!dc_notMidas] if predicate drakoncore:in_water_or_cauldron run function dc_midas:ungoldify/item
execute if entity @s[tag=!dc_notMidas,tag=!dc_midasHealed] if predicate drakoncore:is_raining if predicate drakoncore:under_sky run function dc_midas:ungoldify/item
execute if entity @s[tag=dc_midasHealed] run function dc_midas:midas_heal_effect