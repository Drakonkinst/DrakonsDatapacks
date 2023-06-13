execute as @e[type=item,distance=..1,predicate=dc_enderknife:enchant/is_throwing_grip,limit=1] run tag @s add dc_throwingGrip
execute if entity @e[type=item,tag=dc_throwingGrip,limit=1] as @p[distance=..5] unless entity @s[level=..9,gamemode=!creative] run tag @s add dc_anvilCrafting

# If all requirements met, dc_anvilCrafting will exist
execute if entity @a[tag=dc_anvilCrafting] run function dc_enderknife:enchant/enchant_throwing

# Reset
tag @e[type=item,distance=..1] remove dc_throwingGrip
tag @a remove dc_anvilCrafting