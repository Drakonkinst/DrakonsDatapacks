# Runs once every 5 seconds on each player
team join dc_midas @s[tag=dc_midas,team=!dc_midas]
team leave @a[team=dc_midas,tag=!dc_midas]
execute if entity @s[tag=dc_midas] run team join dc_midas @e[type=#drakoncore:piglins,team=!dc_midas,distance=..100]