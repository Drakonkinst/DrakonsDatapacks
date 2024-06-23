scoreboard players set #LeashUsed dc_value 0
tag @s add dc_wolfLeasher
execute positioned ^ ^ ^1 as @n[type=wolf,tag=dc_werewolfModel,distance=..5] run function dc_werewolf:interact/toggle_leash
tag @s remove dc_wolfLeasher
execute if score #LeashUsed dc_value matches 1 run item modify entity @s[gamemode=!creative] weapon.mainhand drakoncore:remove_1