execute store result score #Variant dc_value run data get entity @s Variant
execute if score #Variant dc_value matches 0 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Variant","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Lucy","color":"#ffc8eb"}]
execute if score #Variant dc_value matches 1 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Variant","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Wild","color":"#906c4c"}]
execute if score #Variant dc_value matches 2 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Variant","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Gold","color":"#ffd81c"}]
execute if score #Variant dc_value matches 3 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Variant","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Cyan","color":"#eaf6ff"}]
execute if score #Variant dc_value matches 4 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Variant","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Blue","color":"#b5b8ff"}]