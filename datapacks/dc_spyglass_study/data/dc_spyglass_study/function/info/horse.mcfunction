execute store result score #Variant dc_value run data get entity @s Variant

scoreboard players operation #Color dc_value = #Variant dc_value
scoreboard players operation #Color dc_value %= #256 dc_value
execute if score #Color dc_value matches 0 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Color","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"White"}]
execute if score #Color dc_value matches 1 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Color","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Creamy"}]
execute if score #Color dc_value matches 2 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Color","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Chestnut"}]
execute if score #Color dc_value matches 3 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Color","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Brown"}]
execute if score #Color dc_value matches 4 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Color","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Black"}]
execute if score #Color dc_value matches 5 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Color","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Gray"}]
execute if score #Color dc_value matches 6 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Color","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Dark Brown"}]

scoreboard players operation #Markings dc_value = #Variant dc_value
scoreboard players operation #Markings dc_value /= #256 dc_value
execute if score #Markings dc_value matches 0 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Markings","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"None"}]
execute if score #Markings dc_value matches 1 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Markings","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"White Stockings"}]
execute if score #Markings dc_value matches 2 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Markings","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"White Field"}]
execute if score #Markings dc_value matches 3 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Markings","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"White Spots"}]
execute if score #Markings dc_value matches 4 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Markings","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Black Dots"}]