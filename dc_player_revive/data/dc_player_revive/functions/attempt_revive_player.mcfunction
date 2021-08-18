execute as @e[tag=grave,type=armor_stand] run function dc_player_revive:locate_matching_grave
execute unless entity @e[tag=dc_locatedGrave,type=armor_stand,limit=1] run tellraw @s {"text":"Your grave no longer exists!","color":"red"}
execute if entity @e[tag=dc_locatedGrave,type=armor_stand,limit=1] run function dc_player_revive:revive_player