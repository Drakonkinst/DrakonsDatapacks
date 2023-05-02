# Attempts to damage entity's offhand slot
execute if data entity @s Inventory[{Slot:-106b}].tag.Damage if predicate drakoncore:durability/offhand/should_damage run function drakoncore:internal/durability/offhand/modify
execute if data entity @s HandItems[1].tag.Damage if predicate drakoncore:durability/legs/should_damage run function drakoncore:internal/durability/offhand/modify