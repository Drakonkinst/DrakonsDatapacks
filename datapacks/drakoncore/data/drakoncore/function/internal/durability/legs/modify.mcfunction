# Store the item's damage into scoreboard
execute store result score #Damage dc_value run data get entity @s Inventory[{Slot:101b}].components."minecraft:damage"
data modify storage drakoncore:durability_damage slot set value "armor.legs"
function drakoncore:internal/durability/increment_damage

function drakoncore:api/mute_armor_equip_sounds
execute if predicate drakoncore:durability/legs/is_broken run function drakoncore:internal/durability/legs/break