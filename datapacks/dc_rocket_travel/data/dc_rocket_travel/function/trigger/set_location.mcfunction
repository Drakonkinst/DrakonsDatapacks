execute align xyz run tp @s ~0.5 ~ ~0.5
data modify entity @e[type=marker,tag=dc_rocketLocation,tag=dc_editing,limit=1] data.X set from entity @s Pos[0]
data modify entity @e[type=marker,tag=dc_rocketLocation,tag=dc_editing,limit=1] data.Z set from entity @s Pos[2]
tellraw @s ["", {"text":"Location set to (","color":"green"},{"nbt":"data.X","entity":"@e[type=marker,tag=dc_rocketLocation,tag=dc_editing,limit=1]","color":"green"},{"text":", ","color":"green"},{"nbt":"data.Z","entity":"@e[type=marker,tag=dc_rocketLocation,tag=dc_editing,limit=1]","color":"green"},{"text":")","color":"green"}]
data get entity @e[type=marker,tag=dc_rocketLocation,tag=dc_editing,limit=1] data.X
data get entity @e[type=marker,tag=dc_rocketLocation,tag=dc_editing,limit=1] data.Z