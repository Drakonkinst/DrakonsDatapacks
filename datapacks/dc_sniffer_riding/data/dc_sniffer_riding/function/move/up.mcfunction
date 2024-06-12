# According to wiki, Sniffers are 1.75 blocks tall
# Then add Player's ~1.25 height
execute if block ~ ~3.2 ~ #drakoncore:non_solid run tp @s ~ ~0.2 ~
execute if score @s dc_snifferBoost matches 1.. at @s if block ~ ~3.2 ~ #drakoncore:non_solid run tp @s ~ ~0.2 ~
