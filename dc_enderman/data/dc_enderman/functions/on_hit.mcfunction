execute unless predicate drakoncore:in_nether if predicate dc_enderman:chance_enderman_teleport at @s run function dc_enderman:teleport_random
execute unless predicate drakoncore:in_nether if block ~ ~ ~ water if predicate dc_enderman:chance_enderman_teleport_water at @s run function dc_enderman:teleport_random
execute unless predicate drakoncore:in_nether at @s run playsound minecraft:entity.enderman.hurt voice @a ~ ~ ~ 1 1
advancement revoke @s only dc_enderman:enderman_player_hit