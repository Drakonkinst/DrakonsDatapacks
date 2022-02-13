# Animation
effect give @s[tag=!dc_noMotionSick] minecraft:nausea 3 0 true
particle minecraft:dragon_breath ~ ~ ~ 0.5 1 0.5 0.01 200
playsound minecraft:block.beacon.power_select ambient @s ~ ~ ~ 1000 0.4
# Clear tag
tag @s remove dc_wait_returning_animation