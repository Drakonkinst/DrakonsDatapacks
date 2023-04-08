data modify entity @s HandItems[0] set from storage dc_throwable_axes:axe_data FlyingAxe
function drakoncore:items/durability/mainhand/damage
execute unless predicate drakoncore:durability/mainhand/exists run data modify storage dc_throwable_axes:axe_data IsBroken set value 1b
execute if predicate drakoncore:durability/mainhand/exists run data modify storage dc_throwable_axes:axe_data FlyingAxe set from entity @s HandItems[0]