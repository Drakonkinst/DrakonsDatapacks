execute unless entity @a[tag=dc_nbActive,limit=1,distance=..10] run tellraw @a ["",{"selector":"@s","color":"white"},{"text":" was erased by ","color":"white"},{"text":"Nightblood","color":"dark_red"}]
execute if entity @a[tag=dc_nbActive,limit=1,distance=..10] run tellraw @a ["",{"selector":"@s","color":"white"},{"text":" was erased by ","color":"white"},{"selector":"@a[tag=dc_nbActive,limit=1,distance=..10]","color":"none"},{"text":" using ","color":"none"},{"text":"Nightblood","color":"dark_red"}]