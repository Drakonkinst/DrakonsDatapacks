title @a[distance=..3,tag=dc_revivingPlayer] actionbar ["",{"text":"Reviving Player: ","color":"green"},{"text":"Complete!","color":"green"}]
playsound minecraft:entity.wither.ambient player @a[distance=..5] ~ ~ ~ 0.2 2
tag @s add dc_revived
scoreboard players reset @s dc_reviveTick
tag @s remove dc_reviving
execute as @a[tag=dc_revivingPlayer] at @s unless entity @a[tag=dc_reviving,distance=..3,limit=1] run tag @s remove dc_revivingPlayer
tellraw @s {"text":"Revive complete, press Respawn to return to your death point!","color":"dark_aqua","bold":true}