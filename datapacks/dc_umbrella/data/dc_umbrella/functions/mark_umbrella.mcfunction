tag @s add dc_matchingAnchor
execute store result score @s dc_temp_id run data get entity @s UUID[0]
execute as @e[type=armor_stand,tag=dc_umbrella] if score @s dc_temp_id = @a[tag=dc_matchingAnchor,limit=1] dc_temp_id run tag @s add dc_matchingUmbrella
tag @s remove dc_matchingAnchor