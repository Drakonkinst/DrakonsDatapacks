# Store the item's damage into scoreboard
execute store result score @s dc_value run data get entity @s Inventory[{Slot:103b}].tag.Damage
function drakoncore:internal/durability/increment_damage
item modify entity @s armor.head drakoncore:damage_item
function drakoncore:api/mute_armor_equip_sounds
execute if predicate drakoncore:durability/head/is_broken run function drakoncore:internal/durability/head/break