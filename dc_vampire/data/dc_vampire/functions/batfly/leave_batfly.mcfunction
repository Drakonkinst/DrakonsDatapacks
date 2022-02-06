gamemode survival @s[tag=dc_batfly0]
gamemode creative @s[tag=dc_batfly1]
gamemode adventure @s[tag=dc_batfly2]
tag @s remove dc_batfly0
tag @s remove dc_batfly1
tag @s remove dc_batfly2
tag @s remove dc_inBatfly
execute align xyz run tp @s ~0.5 ~ ~0.5
function drakoncore:utils/unstuck
tag @s add dc_vampireFloat
scoreboard players reset @s dc_vampireStop

# Effects
execute at @s run particle minecraft:dust 1 0 0 10 ~ ~1 ~ 0.4 0.4 0.4 0 15
execute at @s run playsound minecraft:entity.ender_dragon.flap player @a ~ ~ ~ 1 2