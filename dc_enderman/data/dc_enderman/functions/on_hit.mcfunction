execute unless predicate drakoncore:in_nether run function dc_enderman:danger_sense
execute at @s run playsound minecraft:entity.enderman.hurt voice @a ~ ~ ~ 1 1
advancement revoke @s only dc_enderman:enderman_player_hit