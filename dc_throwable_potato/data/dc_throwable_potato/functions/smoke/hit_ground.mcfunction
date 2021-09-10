data modify entity @s Age set value 0s
tag @s add on_ground
playsound minecraft:entity.wither.shoot player @a ~ ~ ~ 3 0
effect give @a[distance=..2] minecraft:blindness 5 0 false
effect give @a[distance=..2] minecraft:night_vision 5 0 true