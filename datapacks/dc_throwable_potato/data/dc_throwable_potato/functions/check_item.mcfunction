execute if entity @s[tag=!throwable_potato,tag=!waterlogged_potato] if predicate dc_throwable_potato:is_throwable_potato run function dc_throwable_potato:add_tag
execute if entity @s[tag=throwable_potato] run function dc_throwable_potato:tick