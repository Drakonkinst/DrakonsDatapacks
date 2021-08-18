function #drakoncore:check_crafting
execute if entity @s[tag=dc_crafted_item] run function drakoncore:items/check_crafting
tag @s remove dc_check_crafting
tag @s remove dc_crafted_item