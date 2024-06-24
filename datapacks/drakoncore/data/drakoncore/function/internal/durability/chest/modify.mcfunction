# Store the item's damage into scoreboard
execute store result score #Damage dc_value run data get entity @s Inventory[{Slot:102b}].components."minecraft:damage"
data modify storage drakoncore:durability_damage slot set value "armor.chest"
function drakoncore:internal/durability/increment_damage

function drakoncore:api/mute_armor_equip_sounds
execute if predicate drakoncore:durability/chest/is_broken run function drakoncore:internal/durability/chest/break