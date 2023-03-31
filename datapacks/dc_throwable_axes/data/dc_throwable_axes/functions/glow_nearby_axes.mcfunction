execute store result score #AxeThrower dc_temp_id run data get entity @s UUID[0]
execute as @e[type=armor_stand,tag=dc_throwable_model,distance=..200] unless data entity @s HandItems[0].tag.Returning run function dc_throwable_axes:recall/tag_armorstand_if_match
effect give @e[type=armor_stand,tag=dc_matchingAxe] glowing 15 0
tag @e[type=armor_stand] remove dc_matchingAxe