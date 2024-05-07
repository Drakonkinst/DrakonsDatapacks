# Store the item's damage into scoreboard
execute if data entity @s Inventory[{Slot:-106b}].tag.Damage store result score #Damage dc_value run data get entity @s Inventory[{Slot:-106b}].tag.Damage
execute if data entity @s HandItems[1].tag.Damage store result score #Damage dc_value run data get entity @s HandItems[1].tag.Damage
data modify storage drakoncore:durability_damage slot set value "weapon.offhand"
function drakoncore:internal/durability/increment_damage

function drakoncore:api/mute_armor_equip_sounds
execute if predicate drakoncore:durability/offhand/is_broken run function drakoncore:internal/durability/offhand/break