scoreboard players operation #CurrentId dc_playerId = @s dc_playerId
execute as @e[type=item_display,tag=dc_throwable_model,distance=..250] unless data entity @s HandItems[0].tag.Returning run function dc_throwable_axes:recall/tag_item_display
execute as @e[type=item_display,tag=dc_matchingAxe] run data modify entity @s Glowing set value 1b
tag @e[type=item_display] remove dc_matchingAxe