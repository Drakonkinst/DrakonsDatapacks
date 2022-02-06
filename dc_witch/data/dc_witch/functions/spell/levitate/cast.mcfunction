tag @s add dc_filter_anchor
execute as @e[type=!#drakoncore:not_mob,tag=!dc_marker,distance=..7] run function dc_witch:spell/levitate/check_target
execute if entity @s[tag=!dc_success] run function dc_witch:spell/fail_no_target
tag @s remove dc_filter_anchor
tag @s remove dc_success