execute store result score @s dc_temp_id run data get entity @s UUID[0]
execute if score @s dc_temp_id = @e[type=armor_stand,tag=dc_umbrellaAnchor,limit=1] dc_temp_id run tag @s add dc_umbrellaMatchP