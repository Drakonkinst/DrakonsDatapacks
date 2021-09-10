# Runs 20 times per second on each entity
execute if predicate dc_throwable_potato:is_throwable_potato if entity @s[tag=!throwable_potato,tag=!waterlogged_potato] run function dc_throwable_potato:add_tag
execute if entity @s[type=item,tag=throwable_potato] run function dc_throwable_potato:tick