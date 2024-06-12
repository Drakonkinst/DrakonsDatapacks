execute unless data entity @s Owner run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Wild","color":"gray","italic":true}]
execute if data entity @s Owner run function dc_spyglass_study:helper/print_owner_info

execute if data entity @s {variant:"minecraft:white"} run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Variant","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"White","color":"white"}]
execute if data entity @s {variant:"minecraft:black"} run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Variant","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Tuxedo","color":"white"}]
execute if data entity @s {variant:"minecraft:red"} run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Variant","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Ginger","color":"white"}]
execute if data entity @s {variant:"minecraft:siamese"} run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Variant","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Siamese","color":"white"}]
execute if data entity @s {variant:"minecraft:british_shorthair"} run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Variant","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"British Shorthair","color":"white"}]
execute if data entity @s {variant:"minecraft:calico"} run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Variant","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Calico","color":"white"}]
execute if data entity @s {variant:"minecraft:persian"} run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Variant","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Persian","color":"white"}]
execute if data entity @s {variant:"minecraft:ragdoll"} run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Variant","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Ragdoll","color":"white"}]
execute if data entity @s {variant:"minecraft:tabby"} run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Variant","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Tabby","color":"white"}]
execute if data entity @s {variant:"minecraft:all_black"} run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Variant","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Black","color":"white"}]
execute if data entity @s {variant:"minecraft:jellie"} run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Variant","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Jellie","color":"white"}]