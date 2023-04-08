execute store result score #AxeThrower dc_temp_id run data get entity @s UUID[0]
execute as @e[type=item_display,tag=dc_throwable_model,distance=..250] unless data entity @s HandItems[0].tag.Returning run function dc_throwable_axes:recall/tag_item_display_if_match
execute as @e[type=item_display,tag=dc_matchingAxe] run data modify entity @s Glowing set value 1b
tag @e[type=item_display] remove dc_matchingAxe