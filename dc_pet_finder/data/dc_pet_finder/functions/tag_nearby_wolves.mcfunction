tag @s add dc_petSearchAnchor
execute positioned ~-25 ~-25 ~-25 as @e[type=wolf,dx=51,dy=51,dz=51] run function dc_pet_finder:tag_pet_if_match
tag @s remove dc_petSearchAnchor