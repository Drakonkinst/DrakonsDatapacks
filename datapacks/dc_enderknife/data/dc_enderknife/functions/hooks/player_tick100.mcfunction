# Runs once every 5 seconds on each player
execute if predicate drakoncore:is_sneaking unless data entity @s SelectedItem run function dc_throwable_swords:glow_nearby_swords