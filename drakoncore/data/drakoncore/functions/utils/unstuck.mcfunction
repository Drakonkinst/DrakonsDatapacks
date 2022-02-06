execute align xyz unless block ~0.5 ~ ~0.5 #drakoncore:non_solid run tag @s add dc_isStuck
execute align xyz unless block ~0.5 ~1 ~0.5 #drakoncore:non_solid run tag @s add dc_isStuck
execute if entity @s[tag=dc_isStuck] run function drakoncore:internal/unstuck/do_unstuck
tag @s remove dc_isStuck
tag @s remove dc_gotUnstuck