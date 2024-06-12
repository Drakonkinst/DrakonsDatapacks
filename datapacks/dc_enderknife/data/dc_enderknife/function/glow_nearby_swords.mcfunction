scoreboard players operation #CurrentId dc_playerId = @s dc_playerId
execute as @e[type=item_display,tag=dc_throwable_model,distance=..250] run function dc_enderknife:tag_item_display
execute as @e[type=item_display,tag=dc_matchingSword] run data modify entity @s Glowing set value 1b
tag @e[type=item_display] remove dc_matchingSword