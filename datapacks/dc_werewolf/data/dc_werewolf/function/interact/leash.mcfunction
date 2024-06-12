scoreboard players set #LeashUsed dc_value 0
tag @s add dc_wolfLeasher
execute positioned ^ ^ ^1 as @e[type=wolf,tag=dc_werewolfModel,limit=1,distance=..5,sort=nearest] run function dc_werewolf:interact/toggle_leash
tag @s remove dc_wolfLeasher
execute if score #LeashUsed dc_value matches 1 run item modify entity @s[gamemode=!creative] weapon.mainhand drakoncore:remove_1