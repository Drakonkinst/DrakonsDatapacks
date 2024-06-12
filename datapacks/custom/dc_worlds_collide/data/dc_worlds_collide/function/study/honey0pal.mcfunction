scoreboard players set #ChildLocation dc_value 0
execute unless score #ChildLocation dc_value matches 1.. if data entity @s SelectedItem.tag{Nightblood:1b} run scoreboard players set #ChildLocation dc_value 1
execute unless score #ChildLocation dc_value matches 1.. if data entity @s Inventory[{Slot:-106b,tag:{Nightblood:1b}}] run scoreboard players set #ChildLocation dc_value 2
execute unless score #ChildLocation dc_value matches 1.. if data entity @s Inventory[{tag:{Nightblood:1b}}] run scoreboard players set #ChildLocation dc_value 3
execute unless score #ChildLocation dc_value matches 1.. if data entity @s EnderItems[{tag:{Nightblood:1b}}] run scoreboard players set #ChildLocation dc_value 4
execute unless score #ChildLocation dc_value matches 1.. if entity @e[type=item_display,tag=dc_te_nightblood,limit=1] run scoreboard players set #ChildLocation dc_value 5

execute if score #ChildLocation dc_value matches ..0 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Location of Child","color":"gray"},{"text":": ","color":"dark_gray"},{"text": "Unknown"}]
execute if score #ChildLocation dc_value matches 1 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Location of Child","color":"gray"},{"text":": ","color":"dark_gray"},{"text": "Mainhand"}]
execute if score #ChildLocation dc_value matches 2 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Location of Child","color":"gray"},{"text":": ","color":"dark_gray"},{"text": "Offhand"}]
execute if score #ChildLocation dc_value matches 3 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Location of Child","color":"gray"},{"text":": ","color":"dark_gray"},{"text": "Inventory"}]
execute if score #ChildLocation dc_value matches 4 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Location of Child","color":"gray"},{"text":": ","color":"dark_gray"},{"text": "Ender Chest"}]
execute if score #ChildLocation dc_value matches 5 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Location of Child","color":"gray"},{"text":": ","color":"dark_gray"},{"text": "Placed"}]



