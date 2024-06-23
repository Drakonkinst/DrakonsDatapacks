data modify entity @s ShowArms set value 1b
particle minecraft:white_ash ~ ~1 ~ 0.5 0.5 0.5 10 75
playsound minecraft:entity.villager.work_fletcher block @a ~ ~ ~ 1 1
kill @n[type=item,tag=dc_handUpgrade,dx=0]