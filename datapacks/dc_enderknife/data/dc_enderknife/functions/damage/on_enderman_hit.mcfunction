particle minecraft:portal ~ ~1 ~ 0.5 1 0.5 0.1 100
playsound minecraft:entity.enderman.teleport player @a ~ ~ ~
spreadplayers ~ ~ 0 10 false @s
execute at @s run particle minecraft:portal ~ ~1 ~ 0.5 1 0.5 0.1 100
execute at @s run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~