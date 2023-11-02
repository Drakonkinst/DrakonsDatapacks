particle minecraft:smoke ~ ~ ~ 0.1 0.1 0.1 0 1
playsound minecraft:entity.creeper.primed player @a ~ ~ ~ 0.5 2
execute if predicate drakoncore:on_ground run tag @s add dc_bombImpact