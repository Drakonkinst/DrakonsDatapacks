execute store result score @s dc_temp_id run data get entity @s UUID[0]
tag @s add dc_seekingGrave
execute if entity @s[tag=dc_revived] run function dc_player_revive:attempt_revive_player
execute as @e[tag=grave,type=armor_stand] run function dc_player_revive:kill_matching_grave
tag @s remove dc_seekingGrave

tag @s remove dc_reviving
tag @s remove dc_hasGrave
tag @s remove dc_revived
