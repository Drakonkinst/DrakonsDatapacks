execute if block ~ ~ ~ #dc_throwable_axes:bamboo run scoreboard players add @s dc_blocksMined 1
execute if block ~ ~ ~ #dc_throwable_axes:axe_single_mineable run function dc_throwable_axes:drop/check
setblock ~ ~ ~ air destroy
execute if score @s dc_blocksMined matches 5 run function dc_throwable_axes:drop/check