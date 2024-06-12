stopsound @s player minecraft:item.elytra.flying
tag @s remove dc_longFallSound
execute unless predicate drakoncore:in_water unless predicate drakoncore:not_on_solid_ground run function dc_long_fall:land_effects