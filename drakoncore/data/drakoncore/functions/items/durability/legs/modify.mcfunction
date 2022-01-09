# Store the item's damage into scoreboard
execute store result score @s dc_value run data get entity @s Inventory[{Slot:101b}].tag.Damage
function drakoncore:items/durability/increment_damage
item modify entity @s armor.legs drakoncore:damage_item
function drakoncore:items/durability/mute_armor
execute if predicate drakoncore:durability/legs/is_broken run function drakoncore:items/durability/legs/break