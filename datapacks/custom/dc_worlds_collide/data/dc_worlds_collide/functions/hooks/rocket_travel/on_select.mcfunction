# dc_rocketSelect is set to some nonzero number
# Any negative number counts as invalid

execute if score @s[tag=!dc_world_reset] dc_rocketSelect matches 10 run function dc_worlds_collide:on_select_reset