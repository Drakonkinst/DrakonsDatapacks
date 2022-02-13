effect give @s[tag=!dc_noMotionSick] nausea 14 0 true
playsound block.beacon.activate master @s ~ ~ ~ 1000 0.4
tag @s add dc_prepare_to_leave_creative_dimension
scoreboard players set @s dc_portalDelay1 60