execute unless score @s dc_bloodLevel matches 121.. run function dc_vampire:error_no_blood
execute if score @s dc_bloodLevel matches 121.. unless score @s dc_health matches 13.. run function dc_vampire:error_no_health
execute if score @s dc_health matches 17.. if score @s dc_bloodLevel matches 121.. run function dc_vampire:bat_swarm
scoreboard players reset @s dc_vampireSneak