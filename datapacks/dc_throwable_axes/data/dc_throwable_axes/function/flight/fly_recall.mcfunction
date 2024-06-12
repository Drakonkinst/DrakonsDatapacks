# If thrower and recalling, pick up the item

execute if entity @a[tag=dc_currentAxeThrower,limit=1,distance=..3] run function dc_throwable_axes:drop/drop_recall

# Recall movement: Move towards thrower
#execute facing entity @a[tag=dc_currentAxeThrower,limit=1,distance=3..] feet run tp @s ^ ^ ^2.5

# Offsetting by a caret applies an arc to the motion
execute positioned ^0.4 ^0.4 ^ facing entity @a[tag=dc_currentAxeThrower,limit=1] feet run tp @s ^ ^ ^3