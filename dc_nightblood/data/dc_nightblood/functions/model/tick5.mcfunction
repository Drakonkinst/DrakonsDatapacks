tag @s add target
execute as @a[level=..4,distance=..8,gamemode=!spectator,nbt=!{Health:0f}] at @s facing entity @e[type=armor_stand,tag=target,limit=1] feet positioned ^ ^ ^0.07 run tp @s ~ ~0.05 ~
execute as @e[type=#drakoncore:hostile_mobs,distance=..8] at @s facing entity @e[type=armor_stand,tag=target,limit=1] feet positioned ^ ^ ^0.07 run tp @s ~ ~0.05 ~ facing entity @e[type=armor_stand,tag=target,limit=1]
execute as @e[type=#drakoncore:hostile_mobs,distance=..1] run function dc_nightblood:wither
execute as @a[level=..4,distance=..1,gamemode=!spectator,nbt=!{Health:0f},gamemode=!creative,gamemode=!spectator] run function dc_nightblood:wither
execute if entity @a[level=5..,distance=..1,gamemode=!spectator,limit=1] run function dc_tool_embed:pickup_item
tag @s remove target