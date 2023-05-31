stopsound @s player minecraft:item.elytra.flying
tag @s remove dc_longFallSound
execute unless block ~ ~ ~ #drakoncore:water unless block ~ ~ ~ #drakoncore:always_waterlogged unless block ~ ~ ~ #drakoncore:waterloggable[waterlogged=true] run function dc_long_fall:land_effects