effect give @s minecraft:strength 2 1 true
effect give @s[type=player] minecraft:hunger 2 0 true
effect give @s minecraft:regeneration 2 0 true
particle minecraft:block minecraft:end_portal ~ ~1 ~ 0 0 0 0 10
execute unless entity @a[tag=dc_symbiotePossess,limit=1,distance=..10] run function dc_symbiote:host/stop