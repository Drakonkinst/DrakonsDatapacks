scoreboard players reset #AteItem dc_value
execute as @e[type=item,tag=dc_polarBearFood,distance=..3,limit=1] run function dc_polar_bear:eat/pick_up
execute if score #AteItem dc_value matches 1 run function dc_polar_bear:eat/start_eating