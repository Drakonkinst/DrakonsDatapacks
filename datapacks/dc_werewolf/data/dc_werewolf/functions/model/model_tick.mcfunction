# Detect attached player
scoreboard players operation #CurrentId dc_playerId = @s dc_playerId
execute as @a[tag=dc_werewolf,tag=dc_werewolfTransformed,distance=..10] if score @s dc_playerId = #CurrentId dc_playerId run tag @s add dc_targetWerewolf
execute unless entity @a[tag=dc_targetWerewolf,limit=1] run tag @s add dc_shouldDelete

execute if entity @a[tag=dc_targetWerewolf,limit=1,scores={dc_health=0}] run function dc_werewolf:model/model_kill
execute if entity @a[tag=dc_targetWerewolf,limit=1,nbt={HurtTime:9s}] run function dc_werewolf:model/model_damage

execute if entity @s[tag=dc_werewolfAngryModel] if data entity @s {AngerTime:0} run data modify entity @s AngerTime set value 2147483647

# Movement
tp @s @a[tag=dc_targetWerewolf,limit=1]

# Cleanup
execute if entity @s[tag=dc_shouldDelete] run function dc_werewolf:model/model_clear

tag @a remove dc_targetWerewolf