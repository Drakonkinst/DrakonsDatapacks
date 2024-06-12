execute at @a[tag=dc_currentSwordThrower,limit=1] run function dc_enderknife:blinking/blink_effects

execute at @s run tp @a[tag=dc_currentSwordThrower,limit=1] ~ ~ ~
execute as @a[tag=dc_currentSwordThrower,limit=1] run function drakoncore:api/unstuck

execute at @a[tag=dc_currentSwordThrower,limit=1] run function dc_enderknife:blinking/blink_effects

execute unless score #IsBroken dc_value matches 1 as @s run function dc_enderknife:drop/drop_blinking

execute as @a[tag=dc_currentSwordThrower,limit=1] run function dc_enderknife:blinking/blink_side_effects