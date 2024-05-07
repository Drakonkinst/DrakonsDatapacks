# Store the item's damage into scoreboard
execute if data entity @s SelectedItem.tag.Damage store result score #Damage dc_value run data get entity @s SelectedItem.tag.Damage
execute if data entity @s HandItems[0].tag.Damage store result score #Damage dc_value run data get entity @s HandItems[0].tag.Damage
data modify storage drakoncore:durability_damage slot set value "weapon.mainhand"
function drakoncore:internal/durability/increment_damage

function drakoncore:api/mute_armor_equip_sounds
execute if predicate drakoncore:durability/mainhand/is_broken run function drakoncore:internal/durability/mainhand/break