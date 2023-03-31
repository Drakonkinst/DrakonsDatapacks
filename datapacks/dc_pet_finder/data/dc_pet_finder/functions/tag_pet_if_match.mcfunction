execute store result score @s dc_temp_id run data get entity @s Owner[0]
execute if score @s dc_temp_id = @a[limit=1,tag=dc_petSearchAnchor] dc_temp_id run effect give @s minecraft:glowing 6 0 true