execute unless data entity @s Item.tag.Enchantments run data merge entity @s {Item:{tag:{Enchantments:[{}]}}}
execute unless data entity @s Item.tag.display.Lore run data merge entity @s {Item:{tag:{display:{Lore:[]}}}}
data modify entity @s Item.tag.display.Lore append value "[{\"text\":\"Returning\",\"color\":\"gold\",\"italic\":false}]"
data modify entity @s Item.tag.Returning set value 1b
execute if data entity @s Item.tag.Returning run tellraw @a[tag=dc_caster,limit=1] {"text":"Item enchanted successfully!","color":"green"}
execute unless data entity @s Item.tag.Returning run tellraw @a[tag=dc_caster,limit=1] {"text":"Failed to enchant empty Item Frame!","color":"red"}