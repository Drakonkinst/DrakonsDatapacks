execute as @e[type=armor_stand,tag=dc_grave] run function dc_player_revive:locate_matching_grave
execute unless entity @e[type=armor_stand,tag=dc_locatedGrave,limit=1] run tellraw @s {"text":"Your grave no longer exists!","color":"red"}
execute if entity @e[type=armor_stand,tag=dc_locatedGrave,limit=1] run function dc_player_revive:revive_player