say NORMAL
tp @s @a[tag=dc_targetWerewolf,limit=1]
# Offset when sleeping to fix height difference
execute if score #SleepTimer dc_value matches 1.. at @s run tp @s ~ ~-0.05 ~
execute unless entity @s[tag=!dc_leashedWerewolf] run data modify entity @s NoAI set value 1b
tag @s remove dc_leashedWerewolf