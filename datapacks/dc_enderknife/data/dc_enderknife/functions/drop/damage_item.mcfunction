data modify entity @s HandItems[0] set from storage dc_enderknife:sword_data FlyingSword
function drakoncore:api/damage_durability/mainhand
execute unless predicate drakoncore:durability/mainhand/exists run scoreboard players set #IsBroken dc_value 1
execute if predicate drakoncore:durability/mainhand/exists run data modify storage dc_enderknife:sword_data FlyingSword set from entity @s HandItems[0]