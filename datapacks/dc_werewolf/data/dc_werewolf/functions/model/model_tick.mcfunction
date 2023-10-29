# Detect attached player
scoreboard players operation #CurrentId dc_playerId = @s dc_playerId
execute as @a[tag=dc_werewolf,tag=dc_werewolfTransformed,distance=..10] if score @s dc_playerId = #CurrentId dc_playerId run tag @s add dc_targetWerewolf
execute unless entity @a[tag=dc_targetWerewolf,limit=1] run tag @s add dc_shouldDelete

# Movement
tp @s @a[tag=dc_targetWerewolf,limit=1]

# Cleanup
execute if entity @s[tag=dc_shouldDelete] run function drakoncore:api/clear_entity

tag @a remove dc_targetWerewolf