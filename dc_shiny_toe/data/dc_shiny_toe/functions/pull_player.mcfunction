playsound minecraft:entity.ender_dragon.flap hostile @s ~ ~ ~ 1 1.7
execute at @s facing entity @e[type=zombie,tag=dc_pullAnchor,limit=1] feet positioned ^ ^ ^1.2 run tp @s ~ ~0.3 ~
effect give @s slowness 3 0 false