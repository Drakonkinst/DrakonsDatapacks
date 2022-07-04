# Runs once per second on each entity
execute if entity @s[type=item] if block ~ ~ ~ #drakoncore:water_type if predicate dc_wishing_well:is_easter_egg run function dc_wishing_well:egg_tick20
execute if entity @s[type=item] if block ~ ~ ~ #drakoncore:waterloggable[waterlogged=true] if predicate dc_wishing_well:is_easter_egg run function dc_wishing_well:egg_tick20