# Store the item's damage into scoreboard
execute if data entity @s SelectedItem.tag.Damage store result score @s dc_value run data get entity @s SelectedItem.tag.Damage
execute if data entity @s HandItems[0].tag.Damage store result score @s dc_value run data get entity @s HandItems[0].tag.Damage
function drakoncore:internal/durability/increment_damage
item modify entity @s weapon.mainhand drakoncore:damage_item
function drakoncore:api/mute_armor_equip_sounds
execute if predicate drakoncore:durability/mainhand/is_broken run function drakoncore:internal/durability/mainhand/break