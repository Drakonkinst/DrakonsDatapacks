setblock ~ ~ ~ air destroy
execute if block ~ ~ ~ #dc_throwable_axes:bamboo run scoreboard players add @s dc_blocksMined 1
execute unless entity @s[tag=dc_recallAxe] if score @s dc_blocksMined matches 5 run function dc_throwable_axes:drop/check_damage