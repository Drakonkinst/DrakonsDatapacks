tag @s add dc_werewolfModel
team join dc_werewolf @s
data modify entity @s NoAI set value 1b
data modify entity @s Invulnerable set value 1b
attribute @s minecraft:generic.max_health base set 100
data modify entity @s Health set value 100.0f
# data modify entity @s CustomName set value "\"Werewolf\""
scoreboard players operation @s dc_playerId = #CurrentId dc_playerId

# Should only be running this in the transform tick, so add target
tag @s add dc_targetWerewolfModel