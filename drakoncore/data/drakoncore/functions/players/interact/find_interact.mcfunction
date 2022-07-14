tag @s add dc_filter_anchor
execute as @e[type=villager,tag=dc_interact,distance=..3] run function drakoncore:players/interact/check_target
tag @s remove dc_filter_anchor