# Runs 4 times per second on each player
execute if predicate dc_item_magnet:holding_either_hand as @e[type=item,distance=1..6] run function dc_item_magnet:attract_item