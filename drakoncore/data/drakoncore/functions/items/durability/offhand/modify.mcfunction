# Store the item's damage into scoreboard
execute if data entity @s Inventory[{Slot:-106b}].tag.Damage store result score @s dc_value run data get entity @s Inventory[{Slot:-106b}].tag.Damage
execute if data entity @s HandItems[1].tag.Damage store result score @s dc_value run data get entity @s Inventory[{Slot:-106b}].tag.Damage
function drakoncore:items/durability/increment_damage
item modify entity @s weapon.offhand drakoncore:damage_item
function drakoncore:items/durability/mute_armor
execute if predicate drakoncore:durability/offhand/is_broken run function drakoncore:items/durability/offhand/break