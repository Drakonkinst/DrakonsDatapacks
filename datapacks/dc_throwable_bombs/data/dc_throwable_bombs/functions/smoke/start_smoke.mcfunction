data modify entity @s Age set value 0s
playsound minecraft:entity.wither.shoot player @a ~ ~ ~ 3 0
execute as @a[distance=..2] run function dc_throwable_bombs:smoke/give_effects
tag @s add dc_smokeStarted