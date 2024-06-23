gamemode survival @s[tag=dc_batfly0]
gamemode creative @s[tag=dc_batfly1]
gamemode adventure @s[tag=dc_batfly2]
tag @s remove dc_batfly0
tag @s remove dc_batfly1
tag @s remove dc_batfly2
tag @s remove dc_inBatfly

# Align to the block and unstuck
execute align xyz run tp @s ~0.5 ~ ~0.5
function drakoncore:api/unstuck
effect give @s minecraft:slow_falling 1 0 true
tag @s add dc_vampireFloat

# Effects
execute at @s run particle minecraft:dust{scale:4,color:[1,0,0]} ~ ~1 ~ 0.4 0.4 0.4 0 15
execute at @s run playsound minecraft:entity.ender_dragon.flap player @a ~ ~ ~ 1 2

execute at @s as @e[type=#drakoncore:vanilla/all_mobs,distance=..128,tag=dc_persistentTemp] run function dc_vampire:persistent/remove_persistent