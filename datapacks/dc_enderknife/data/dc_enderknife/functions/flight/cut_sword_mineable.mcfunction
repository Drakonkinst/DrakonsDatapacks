setblock ~ ~ ~ air destroy
execute if block ~ ~ ~ #dc_enderknife:bamboo run scoreboard players add @s dc_blocksMined 1
scoreboard players set #HitMob dc_value 0
execute if score @s dc_blocksMined matches 5 run function dc_enderknife:drop/check_damage