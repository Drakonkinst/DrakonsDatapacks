# Run when a player dies
execute if entity @s[tag=dc_nbDeathReason] at @s run function dc_nightblood:on_nightblood_death
execute if entity @s[tag=dc_nbWitherReason] run tellraw @a ["",{"selector":"@s","color":"white"},{"text":" was consumed by ","color":"white"},{"text":"Nightblood","color":"dark_red"}]
tag @s remove dc_nbActive
tag @s remove dc_nbSheathing
tag @s remove dc_nbUnsheathing
tag @s remove dc_nbCurse
scoreboard players reset @s dc_nbUse