# Runs once every 5 seconds globally
execute as @e[type=item,tag=!dc_reforestChecked] if predicate drakoncore:on_ground run function dc_reforest:check_item
execute as @e[type=item,tag=dc_reforestSapling] at @s if block ~ ~-0.1 ~ #minecraft:dirt if block ~ ~ ~ #drakoncore:air unless entity @e[type=!#drakoncore:not_mob,distance=..2,limit=1] run function dc_reforest:replant_sapling