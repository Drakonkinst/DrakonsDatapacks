# Store the item's damage into scoreboard
execute store result score #Damage dc_value run data get entity @s Inventory[{Slot:100b}].tag.Damage
data modify storage drakoncore:durability_damage slot set value "armor.feet"
function drakoncore:internal/durability/increment_damage

function drakoncore:api/mute_armor_equip_sounds
execute if predicate drakoncore:durability/feet/is_broken run function drakoncore:internal/durability/feet/break