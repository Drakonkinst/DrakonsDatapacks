tag @s remove dc_te_model
tag @s remove dc_throwable_model
tag @s add dc_thrownAxe
tag @s add dc_recallAxe

# Axe should not take durability damage during recall
tag @s add dc_noDamageThrow

# Face the thrower
#execute facing entity @a[tag=dc_currentAxeThrower,limit=1] feet run tp @s ~ ~ ~ ~ ~
data modify entity @s Rotation set from entity @a[tag=dc_currentAxeThrower,limit=1] Rotation

# Add enchantment tags
execute if data entity @s item.tag.Enchantments[{id:"minecraft:fire_aspect"}] run tag @s add dc_axeFireAspect
execute if data entity @s ThrownItemData.tag.Enchantments[{id:"minecraft:sharpness"}] run tag @s add dc_axeSharpness

# Modify transformation to match standard thrown axes
#data modify entity @s interpolation_duration set value 0
#data modify entity @s start_interpolation set value 0
data modify entity @s transformation set value {scale:[0.8f,0.8f,0.8f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.354f, -0.612f, -0.354f, 0.612f],translation:[0.0f,0f,0.0f]}
