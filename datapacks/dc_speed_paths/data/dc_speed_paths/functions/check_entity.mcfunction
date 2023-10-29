execute if block ~ ~-0.1 ~ minecraft:dirt_path unless block ~ ~-1.1 ~ #dc_speed_paths:blocks_speed_path run function dc_speed_paths:add_buff
execute if entity @s[tag=dc_speedPathBuff,tag=!dc_onSpeedPath] run function dc_speed_paths:remove_buff
tag @s remove dc_onSpeedPath