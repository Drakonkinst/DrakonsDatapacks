execute unless entity @s[tag=creativeThrower] run function drakoncore:items/durability/mainhand/damage
execute if predicate drakoncore:durability/mainhand/exists run function dc_throwable_axes:drop/success
execute unless predicate drakoncore:durability/mainhand/exists run function dc_throwable_axes:drop/break