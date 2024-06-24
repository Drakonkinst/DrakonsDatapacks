# Store the item's damage into scoreboard
execute store result score #Damage dc_value run data get entity @s Inventory[{Slot:103b}].components."minecraft:damage"
data modify storage drakoncore:durability_damage slot set value "armor.head"
function drakoncore:internal/durability/increment_damage

function drakoncore:api/mute_armor_equip_sounds
execute if predicate drakoncore:durability/head/is_broken run function drakoncore:internal/durability/head/break