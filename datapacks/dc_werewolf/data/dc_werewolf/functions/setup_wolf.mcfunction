tag @s add dc_werewolfModel
team join dc_werewolf @s
data modify entity @s NoAI set value 1b
scoreboard players operation @s dc_playerId = #CurrentId dc_playerId

# Should only be running this in the transform tick, so add target
tag @s add dc_targetWerewolfModel