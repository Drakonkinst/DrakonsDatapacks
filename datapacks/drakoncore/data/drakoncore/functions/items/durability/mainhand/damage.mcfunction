# Attempts to damage the player's helmet
execute if data entity @s SelectedItem.tag.Damage if predicate drakoncore:durability/mainhand/should_damage run function drakoncore:items/durability/mainhand/modify
execute if data entity @s HandItems[0].tag.Damage if predicate drakoncore:durability/mainhand/should_damage run function drakoncore:items/durability/mainhand/modify