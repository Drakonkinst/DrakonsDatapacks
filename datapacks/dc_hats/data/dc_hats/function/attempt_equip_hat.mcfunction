execute if data entity @s Inventory.[{Slot:103b}] run tellraw @s {"text":"You are already wearing an item!","color":"red"}
execute unless data entity @s Inventory.[{Slot:103b}] unless data entity @s SelectedItem run tellraw @s {"text":"You need to be holding the item you want to wear!","color":"red"}
execute unless data entity @s Inventory.[{Slot:103b}] if data entity @s SelectedItem run function dc_hats:equip_hat
