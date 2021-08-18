execute store result score @s dc_temp_id run data get entity @s UUID[0]
tag @s add dc_seekingGrave
execute as @e[tag=grave,type=armor_stand] run function dc_player_revive:locate_matching_grave
tag @s remove dc_seekingGrave

execute unless entity @e[tag=dc_locatedGrave,type=armor_stand,limit=1] run tag @s remove dc_hasGrave
execute unless predicate drakoncore:is_player_dead run function dc_player_revive:on_player_respawn
execute if entity @s[tag=dc_hasGrave] at @e[tag=dc_locatedGrave,type=armor_stand,limit=1] run function dc_player_revive:update_grave