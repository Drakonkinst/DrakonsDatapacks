# Runs once every 5 seconds globally
execute as @e[type=item,tag=!dc_reforestChecked] if predicate drakoncore:on_ground run function dc_reforest:check_item
execute as @e[type=item,tag=dc_reforestSapling] at @s if block ~ ~-0.1 ~ #minecraft:dirt if block ~ ~ ~ #drakoncore:air run function dc_reforest:replant_sapling