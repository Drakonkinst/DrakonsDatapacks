tag @s add dc_recallAxe

# Face the thrower
execute facing entity @a[tag=dc_currentAxeThrower,limit=1] feet run tp @s ~ ~ ~ ~ ~
#data modify entity @s Rotation set from entity @a[tag=dc_currentAxeThrower,limit=1] Rotation