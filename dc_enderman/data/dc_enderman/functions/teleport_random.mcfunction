execute if predicate dc_enderman:chance_endermite run summon minecraft:endermite ~ ~ ~
particle minecraft:portal ~ ~1 ~ 0.5 1 0.5 0.1 100
playsound minecraft:entity.enderman.teleport voice @a ~ ~ ~
execute store result score @s dc_value run data get entity @s FallDistance
execute if score @s dc_value matches 3.. run effect give @s minecraft:jump_boost 3 255 true
spreadplayers ~ ~ 0 32 false @s
execute at @s run particle minecraft:portal ~ ~1 ~ 0.5 1 0.5 0.1 100
execute at @s run playsound minecraft:entity.enderman.teleport voice @a ~ ~ ~
scoreboard players reset @s dc_EM_sneakTime