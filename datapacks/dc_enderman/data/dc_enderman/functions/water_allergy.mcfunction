execute if data entity @s RootVehicle.Entity{id:"minecraft:boat"} run tag @s add dc_inBoat
execute if data entity @s RootVehicle.Entity{id:"minecraft:chest_boat"} run tag @s add dc_inBoat
execute positioned ~-2 ~-2 ~-2 if entity @e[type=#drakoncore:boats,limit=1,dx=2,dy=2,dz=2] run tag @s add dc_inBoat
execute unless entity @s[tag=dc_inBoat] if block ~ ~ ~ #drakoncore:water_type run effect give @s minecraft:poison 2 2 true
execute unless entity @s[tag=dc_inBoat] if block ~ ~ ~ #drakoncore:waterloggable[waterlogged=true] run effect give @s minecraft:poison 2 2 true

execute if block ~ ~1 ~ #drakoncore:water_type run effect give @s minecraft:poison 2 2 true
execute if block ~ ~1 ~ #drakoncore:waterloggable[waterlogged=true] run effect give @s minecraft:poison 2 2 true

execute if entity @s[tag=!dc_holdingUmbrella] if predicate drakoncore:is_raining if predicate drakoncore:under_sky run effect give @s minecraft:poison 2 2 true
tag @s remove dc_inBoat