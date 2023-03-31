tag @s add dc_filter_anchor
execute as @e[type=!#dc_symbiote:invalid_host,distance=..10,tag=!dc_filter_anchor,tag=!dc_marker] run function dc_symbiote:possess/check_target
tag @s remove dc_filter_anchor
scoreboard players reset @s dc_symbioteSneak