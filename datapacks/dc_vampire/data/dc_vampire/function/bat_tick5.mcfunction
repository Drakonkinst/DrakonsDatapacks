# Give poison to all living mobs within 2 blocks
execute positioned ~-1 ~-1 ~-1 as @e[type=#dc_vampire:gives_blood,type=!bat,tag=!dc_vampire,dx=2,dy=2,dz=2] run function dc_vampire:vampire_bat_drain
scoreboard players remove @s dc_bloodLevel 1
execute unless score @s dc_bloodLevel matches 1.. run function dc_vampire:bat_explode