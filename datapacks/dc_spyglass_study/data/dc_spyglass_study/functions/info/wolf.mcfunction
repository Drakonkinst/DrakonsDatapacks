execute unless data entity @s Owner run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Wild","color":"gray","italic":true}]
execute if data entity @s Owner run function dc_spyglass_study:helper/print_owner_info

execute if data entity @s {variant:"minecraft:ashen"} run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Variant","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Ashen","color":"white"}]
execute if data entity @s {variant:"minecraft:Black"} run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Variant","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Black","color":"white"}]
execute if data entity @s {variant:"minecraft:chestnut"} run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Variant","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Chestnut","color":"white"}]
execute if data entity @s {variant:"minecraft:pale"} run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Variant","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Pale","color":"white"}]
execute if data entity @s {variant:"minecraft:rusty"} run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Variant","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Rusty","color":"white"}]
execute if data entity @s {variant:"minecraft:snowy"} run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Variant","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Snowy","color":"white"}]
execute if data entity @s {variant:"minecraft:spotted"} run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Variant","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Spotted","color":"white"}]
execute if data entity @s {variant:"minecraft:striped"} run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Variant","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Striped","color":"white"}]
execute if data entity @s {variant:"minecraft:woods"} run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Variant","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Woods","color":"white"}]
