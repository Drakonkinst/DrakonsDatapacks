tag @s remove dc_snifferMountFull
data modify entity @s NoGravity set value 0b
execute if block ~ ~-0.2 ~ #drakoncore:non_solid run effect give @s slow_falling infinite 0 true