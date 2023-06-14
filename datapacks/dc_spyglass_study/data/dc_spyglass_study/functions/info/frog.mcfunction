execute if data entity @s Brain.memories.minecraft:is_pregnant run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Has Eggs","color":"gray","italic":true}]

execute if data entity @s {variant:"minecraft:temperate"} run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Variant","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Temperate","color":"#ED8D5A"}]
execute if data entity @s {variant:"minecraft:warm"} run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Variant","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Warm","color":"#C3BFA8"}]
execute if data entity @s {variant:"minecraft:cold"} run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Variant","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Cold","color":"#669530"}]