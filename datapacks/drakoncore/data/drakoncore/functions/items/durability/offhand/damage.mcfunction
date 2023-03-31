# Attempts to damage the player's helmet
execute if data entity @s Inventory[{Slot:-106b}].tag.Damage if predicate drakoncore:durability/offhand/should_damage run function drakoncore:items/durability/offhand/modify
execute if data entity @s HandItems[1].tag.Damage if predicate drakoncore:durability/legs/should_damage run function drakoncore:items/durability/legs/modify