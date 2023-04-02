tag @s add dc_hasGrave
scoreboard players set @s dc_reviveTick 0

# Initialize grave with the same UUID
execute store result score @s dc_temp_id run data get entity @s UUID[0]
tag @s add dc_spawningGrave
execute summon armor_stand run function dc_player_revive:setup_grave
tag @s remove dc_spawningGrave