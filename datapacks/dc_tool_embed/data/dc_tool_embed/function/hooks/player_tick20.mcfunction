# Runs once per second on each player
execute unless predicate drakoncore:is_sneaking positioned ~ ~-0.5 ~ if entity @e[type=item_display,tag=dc_te_model,tag=!dc_te_nopickup,limit=1,distance=..1] run title @s actionbar ["","Press ",{"keybind":"key.sneak"}," to pick up"]
execute unless predicate drakoncore:is_sneaking positioned ~ ~ ~ if entity @e[type=item_display,tag=dc_te_model,tag=!dc_te_nopickup,tag=dc_long_pickup,limit=1,distance=..3] run title @s actionbar ["","Press ",{"keybind":"key.sneak"}," to pick up"]
