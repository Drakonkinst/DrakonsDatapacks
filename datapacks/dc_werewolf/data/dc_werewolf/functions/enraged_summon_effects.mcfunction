particle minecraft:flame ^ ^1 ^3 0.1 0.1 0.1 0.5 75 normal @s
playsound minecraft:entity.wolf.howl player @a ~ ~ ~ 0.5 0.75
playsound minecraft:entity.wolf.howl player @a ~ ~ ~ 0.5 0.8
playsound minecraft:entity.wolf.growl player @a ~ ~ ~ 0.7 1
playsound minecraft:entity.ender_dragon.growl player @a ~ ~ ~ 1 0
effect give @s darkness 2 0 true

# Ensure they stay enraged a bit longer upon entering the state
scoreboard players add @s dc_werewolfRage 6