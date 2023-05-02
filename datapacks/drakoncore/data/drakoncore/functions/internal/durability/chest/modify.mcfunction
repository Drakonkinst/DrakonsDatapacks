# Store the item's damage into scoreboard
execute store result score @s dc_value run data get entity @s Inventory[{Slot:102b}].tag.Damage
function drakoncore:internal/durability/increment_damage
item modify entity @s armor.chest drakoncore:damage_item
function drakoncore:api/mute_armor_equip_sounds
execute if predicate drakoncore:durability/chest/is_broken run function drakoncore:internal/durability/chest/break