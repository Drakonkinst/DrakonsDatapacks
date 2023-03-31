tag @s add dc_petSearchAnchor
execute as @e[type=parrot,distance=..50] run function dc_pet_finder:tag_pet_if_match
tag @s remove dc_petSearchAnchor