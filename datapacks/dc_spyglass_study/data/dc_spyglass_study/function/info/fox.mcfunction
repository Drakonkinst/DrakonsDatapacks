execute if data entity @s {Type:"red"} run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Variant","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Red","color":"#a65a15"}]
execute if data entity @s {Type:"snow"} run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Variant","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Snow","color":"#fffef8"}]

# Assumes Crouching/Sitting/Sleeping are exclusive states
execute if data entity @s {Crouching:1b} run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Status","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Sneaking","color":"white"}]
execute if data entity @s {Crouching:0b,Sitting:1b} run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Status","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Resting","color":"white"}]
execute if data entity @s {Crouching:0b,Sitting:0b,Sleeping:1b} run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Status","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Napping","color":"white"}]

# If not one of these three states, they are Eating if they have something in their mouth
execute if data entity @s {Crouching:0b,Sitting:0b,Sleeping:0b} if data entity @s HandItems[0].count run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Status","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Eating","color":"white"}]
execute if data entity @s {Crouching:0b,Sitting:0b,Sleeping:0b} unless data entity @s HandItems[0].count run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Status","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Hunting","color":"white"}]