scoreboard players operation #CurrentId dc_playerId = @s dc_playerId
# line below may be unecessary due to lack of recalling sword
# execute as @e[type=item_display,tag=dc_throwable_model,distance=..250] unless data entity @s HandItems[0].tag.Returning run function dc_enderknife:recall/tag_item_display_if_match
execute as @e[type=item_display,tag=dc_matchingSword] run data modify entity @s Glowing set value 1b
tag @e[type=item_display] remove dc_matchingSword