title @a[distance=..3,tag=dc_revivingPlayer] actionbar ["",{"text":"Reviving Player: ","color":"green"},{"text":"⬛⬛","color":"green"},{"text":"⬜⬜⬜","color":"red"}]
execute if score @s dc_reviveTick matches 4 run playsound minecraft:entity.wither.ambient player @a[distance=..5] ~ ~ ~ 0.2 1.3
execute if score @s dc_reviveTick matches 4 run tellraw @s {"text":"Reviving: 40%","color":"dark_aqua"}