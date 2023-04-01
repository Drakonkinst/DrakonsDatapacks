execute unless dimension minecraft:the_nether if predicate drakoncore:under_sky run function dc_enderman:danger_sense
execute at @s run playsound minecraft:entity.enderman.hurt player @a ~ ~ ~ 0.75 1
advancement revoke @s only dc_enderman:enderman_player_hit