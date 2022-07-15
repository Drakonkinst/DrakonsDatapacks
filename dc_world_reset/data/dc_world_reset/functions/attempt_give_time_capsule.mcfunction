tellraw @s[tag=dc_time_capsule] {"text":"You have already been given a time capsule!","color":"red"}
execute if entity @s[tag=!dc_time_capsule] run function dc_world_reset:give_time_capsule