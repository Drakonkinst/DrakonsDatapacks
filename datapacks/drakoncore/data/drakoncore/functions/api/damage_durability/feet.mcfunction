# Attempts to damage entity's feet slot
execute if data entity @s Inventory[{Slot:100b}].tag.Damage if predicate drakoncore:durability/feet/should_damage run function drakoncore:internal/durability/feet/modify