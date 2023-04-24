tag @s add dc_midasAnchor
execute positioned ~ -100 ~ as @e[type=armor_stand,tag=dc_midasHolder,distance=..0.01,limit=1] run function dc_midas:internal/unconvert_helmet
execute positioned ~ -100 ~ as @e[type=armor_stand,tag=dc_midasHolder,distance=..0.01,limit=1] run function dc_midas:internal/unconvert_chestplate
execute positioned ~ -100 ~ as @e[type=armor_stand,tag=dc_midasHolder,distance=..0.01,limit=1] run function dc_midas:internal/unconvert_leggings
execute positioned ~ -100 ~ as @e[type=armor_stand,tag=dc_midasHolder,distance=..0.01,limit=1] run function dc_midas:internal/unconvert_boots
execute positioned ~ -100 ~ as @e[type=armor_stand,tag=dc_midasHolder,distance=..0.01,limit=1] run function dc_midas:internal/unconvert_mainhand
execute positioned ~ -100 ~ as @e[type=armor_stand,tag=dc_midasHolder,distance=..0.01,limit=1] run function dc_midas:internal/unconvert_offhand
tag @s remove dc_midasAnchor