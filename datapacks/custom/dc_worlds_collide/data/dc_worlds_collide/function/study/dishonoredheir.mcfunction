scoreboard players reset #BallsSnipped dc_value
execute if predicate dc_worlds_collide:no_balls run scoreboard players set #BallsSnipped dc_value 1
execute unless score #BallsSnipped dc_value matches 1 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Balls","color":"gray"},{"text":": ","color":"dark_gray"},{"text": "Attached"}]
execute if score #BallsSnipped dc_value matches 1 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Balls","color":"gray"},{"text":": ","color":"dark_gray"},{"text": "Snipped"}]