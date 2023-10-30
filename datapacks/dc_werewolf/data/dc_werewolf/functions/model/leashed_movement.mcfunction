say LEASHED
#execute rotated as @a[tag=dc_targetWerewolf,limit=1] run tp @s ~ ~ ~ ~ ~
execute unless entity @s[tag=dc_leashedWerewolf] run data modify entity @s NoAI set value 0b
# Stockholm syndrom? Stockholm syndrome.
execute unless entity @s[tag=dc_leashedWerewolf] run data modify entity @s Owner set from entity @s Leash.UUID
execute unless entity @s[tag=dc_leashedWerewolf] run data modify entity @s Sitting set value 0b
tag @s add dc_leashedWerewolf
execute at @s run tp @a[tag=dc_targetWerewolf,limit=1] ~ ~ ~