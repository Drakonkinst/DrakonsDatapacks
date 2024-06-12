execute store result score #Level dc_value run data get entity @s VillagerData.level
execute if data entity @s {VillagerData:{profession:"minecraft:nitwit"}} run scoreboard players set #Level dc_value 0
execute if data entity @s {VillagerData:{profession:"minecraft:none"}} run scoreboard players set #Level dc_value 0
execute if score #Level dc_value matches 1 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Experience","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Novice","color":"#717171"}]
execute if score #Level dc_value matches 2 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Experience","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Apprentice","color":"#ac8b75"}]
execute if score #Level dc_value matches 3 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Experience","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Journeyman","color":"#f7e949"}]
execute if score #Level dc_value matches 4 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Experience","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Expert","color":"#4ae785"}]
execute if score #Level dc_value matches 5 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Experience","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Master","color":"#1dccd2"}]