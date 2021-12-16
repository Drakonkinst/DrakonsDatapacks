scoreboard players set @s dc_witchCooldown 15
xp add @s -2 levels
tag @s add dc_cast_success
playsound minecraft:entity.illusioner.cast_spell player @a ~ ~ ~ 0.3 0.9
playsound minecraft:block.amethyst_block.fall player @a ~ ~ ~ 1 1
playsound minecraft:item.firecharge.use player @s ~ ~ ~ 1 1
playsound minecraft:entity.blaze.burn player @s ~ ~ ~ 1 1
particle minecraft:flame ~ ~ ~ 0 0 0 0.5 20 normal
execute as @e[type=creeper,dx=0] run data modify entity @s ignited set value 1b