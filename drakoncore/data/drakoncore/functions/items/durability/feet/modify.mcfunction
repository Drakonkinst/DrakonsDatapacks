# Store the item's damage into scoreboard
execute store result score @s dc_value run data get entity @s Inventory[{Slot:100b}].tag.Damage
function drakoncore:items/durability/increment_damage
item modify entity @s armor.feet drakoncore:damage_item
function drakoncore:items/durability/mute_armor
execute if predicate drakoncore:durability/feet/is_broken run function drakoncore:items/durability/feet/break