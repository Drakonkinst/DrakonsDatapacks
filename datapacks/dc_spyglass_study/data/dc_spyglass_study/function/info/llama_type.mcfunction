execute if data entity @s {Tame:1b} run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Tamed","color":"gray","italic":true}]
execute unless data entity @s {Tame:1b} run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Wild","color":"gray","italic":true}]

execute store result score #Variant dc_value run data get entity @s Variant
execute if score #Variant dc_value matches 0 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Variant","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Creamy"}]
execute if score #Variant dc_value matches 1 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Variant","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"White"}]
execute if score #Variant dc_value matches 2 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Variant","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Brown"}]
execute if score #Variant dc_value matches 3 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Variant","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Gray"}]

execute store result score #Strength dc_value run data get entity @s Strength
execute if score #Strength dc_value matches 1 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Strength","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"⭐","color":"#fcd53f"},{"text":"⭐⭐⭐⭐","color":"dark_gray"}]
execute if score #Strength dc_value matches 2 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Strength","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"⭐⭐","color":"#fcd53f"},{"text":"⭐⭐⭐","color":"dark_gray"}]
execute if score #Strength dc_value matches 3 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Strength","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"⭐⭐⭐","color":"#fcd53f"},{"text":"⭐⭐","color":"dark_gray"}]
execute if score #Strength dc_value matches 4 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Strength","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"⭐⭐⭐⭐","color":"#fcd53f"},{"text":"⭐⭐","color":"dark_gray"}]
execute if score #Strength dc_value matches 5 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Strength","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"⭐⭐⭐⭐⭐","color":"#fcd53f"}]