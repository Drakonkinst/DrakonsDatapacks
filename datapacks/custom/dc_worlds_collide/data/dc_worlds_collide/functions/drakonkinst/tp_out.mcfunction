tag @s add dc_drakonSpectate
execute if predicate dc_enderman:chance_endermite run summon minecraft:endermite ~ ~ ~
particle minecraft:portal ~ ~ ~ 0.5 1 0.5 0.1 100
playsound minecraft:entity.enderman.teleport player @a ~ ~ ~