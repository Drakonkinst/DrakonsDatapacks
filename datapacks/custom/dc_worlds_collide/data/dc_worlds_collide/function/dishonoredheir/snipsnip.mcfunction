effect give @s minecraft:slowness 120 2 true
effect give @s minecraft:nausea 30 0 true
playsound minecraft:entity.sheep.shear player @a ~ ~ ~ 2 1
playsound minecraft:entity.player.hurt_sweet_berry_bush player @a ~ ~ ~ 1 1
playsound minecraft:entity.villager.work_cleric player @a ~ ~ ~ 1 1
tellraw @s {"text":"Uh oh, you don't feel so good...","color":"dark_green","italic":true}
clear @s egg
loot spawn ~ ~ ~ loot dc_worlds_collide:balls
execute as @e[type=item,distance=..1,nbt={Item:{Balls:1b}}] run data merge entity @s {PickupDelay:40,Motion:[0.15,0.15,0.15]}