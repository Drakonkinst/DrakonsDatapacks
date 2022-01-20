tag @s add dc_midasAnchor
function dc_midas:summon_midas_holder
execute positioned ~ -100 ~ as @e[type=armor_stand,tag=dc_midasHolder,distance=..0.01,limit=1] run function dc_midas:internal/convert_helmet
tag @s remove dc_midasAnchor