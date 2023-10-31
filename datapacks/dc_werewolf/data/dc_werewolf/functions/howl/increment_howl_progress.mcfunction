scoreboard players add @s dc_werewolfActionCooldown 1
execute if score @s dc_werewolfActionCooldown matches 1 run attribute @s minecraft:generic.movement_speed modifier add 2467b63a-066c-43a2-a78f-dd3fb0888b05 "Werewolf Howl Progress 1" -0.15 multiply_base
execute if score @s dc_werewolfActionCooldown matches 2 run attribute @s minecraft:generic.movement_speed modifier add 006445fc-d46e-4369-94e0-f9eb998a623a "Werewolf Howl Progress 2" -0.15 multiply_base
execute if score @s dc_werewolfActionCooldown matches 3 run attribute @s minecraft:generic.movement_speed modifier add 5132a495-8415-4963-aaf3-ae8dea49b345 "Werewolf Howl Progress 3" -0.15 multiply_base
execute if score @s dc_werewolfActionCooldown matches 6.. positioned ^ ^ ^2 run function dc_werewolf:howl/do_howl
tag @s add dc_werewolfHowlCharging