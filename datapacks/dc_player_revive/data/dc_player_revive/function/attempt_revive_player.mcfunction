scoreboard players operation #CurrentId dc_playerId = @s dc_playerId
execute as @e[type=armor_stand,tag=dc_grave] if score @s dc_playerId = #CurrentId dc_playerId run tag @s add dc_locatedGrave
execute unless entity @e[type=armor_stand,tag=dc_locatedGrave,limit=1] run tellraw @s {"text":"Your grave no longer exists!","color":"red"}
execute if entity @e[type=armor_stand,tag=dc_locatedGrave,limit=1] run function dc_player_revive:revive_player
tag @e[type=armor_stand,tag=dc_grave] remove dc_locatedGrave