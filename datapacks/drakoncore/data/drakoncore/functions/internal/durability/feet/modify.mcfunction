# Store the item's damage into scoreboard
execute store result score @s dc_value run data get entity @s Inventory[{Slot:100b}].tag.Damage
function drakoncore:internal/durability/increment_damage
item modify entity @s armor.feet drakoncore:damage_item
function drakoncore:api/mute_armor_equip_sounds
execute if predicate drakoncore:durability/feet/is_broken run function drakoncore:internal/durability/feet/break