scoreboard players add @s dc_werewolfActionCooldown 1
execute if score @s dc_werewolfActionCooldown matches 1 run attribute @s minecraft:generic.movement_speed modifier add dc_werewolf:howl_progress_1 -0.15 add_multiplied_base
execute if score @s dc_werewolfActionCooldown matches 2 run attribute @s minecraft:generic.movement_speed modifier add dc_werewolf:howl_progress_2 -0.15 add_multiplied_base
execute if score @s dc_werewolfActionCooldown matches 3 run attribute @s minecraft:generic.movement_speed modifier add dc_werewolf:howl_progress_3 -0.15 add_multiplied_base
execute if score @s dc_werewolfActionCooldown matches 6.. positioned ^ ^ ^2 run function dc_werewolf:howl/do_howl
tag @s add dc_werewolfHowlCharging