# Runs 4 times per second on each player
scoreboard players set #Exists dc_value 0

execute if predicate drakoncore:is_sneaking positioned ~ ~-0.5 ~ as @e[type=item_display,tag=dc_te_model,tag=!dc_te_nopickup,tag=!dc_long_pickup,limit=1,distance=..1] store success score #Exists dc_value run function dc_tool_embed:pickup_item
execute unless score #Exists dc_value matches 1.. if predicate drakoncore:is_sneaking positioned ~ ~ ~ as @e[type=item_display,tag=dc_te_model,tag=!dc_te_nopickup,tag=dc_long_pickup,limit=1,distance=..3] run function dc_tool_embed:pickup_item