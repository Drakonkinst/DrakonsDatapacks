execute as @e[type=item] at @s if block ~ ~ ~ #drakoncore:water_type if predicate dc_wishing_well:is_easter_egg run function dc_wishing_well:egg_tick20
execute as @e[type=item] at @s if block ~ ~ ~ #drakoncore:waterloggable[waterlogged=true] if predicate dc_wishing_well:is_easter_egg run function dc_wishing_well:egg_tick20