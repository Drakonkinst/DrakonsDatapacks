tag @s add dc_werewolfModel
team join dc_werewolf @s
data modify entity @s NoAI set value 1b
data modify entity @s Invulnerable set value 1b
data modify entity @s variant set value "minecraft:black"
# data modify entity @s CustomName set value "\"Werewolf\""
scoreboard players operation @s dc_playerId = #CurrentId dc_playerId
effect give @s minecraft:regeneration infinite 5 true

# Should only be running this in the transform tick, so add target
tag @s add dc_targetWerewolfModel