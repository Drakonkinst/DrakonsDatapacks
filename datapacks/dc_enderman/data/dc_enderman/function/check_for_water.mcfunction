tag @s add dc_inWater
execute if predicate drakoncore:in_water_or_cauldron run return
execute positioned ~ ~1 ~ if predicate drakoncore:in_water_or_cauldron run return
execute unless entity @s[tag=dc_holdingUmbrella] if predicate drakoncore:is_raining run return
tag @s remove dc_inWater