# Summon bats based on blood level
tag @s add dc_castBatSwarm
function dc_vampire:absorb_bats
execute if score @s dc_bloodLevel matches 121.. run function dc_vampire:summon_5_bats
execute if score @s dc_bloodLevel matches 361.. run function dc_vampire:summon_5_bats
execute if score @s dc_bloodLevel matches 601.. run function dc_vampire:summon_5_bats

scoreboard players set @s dc_bloodLevel 60
tellraw @s ["",{"text":"You are ","italic":true,"color":"dark_red","hoverEvent":{"action":"show_text","contents":[{"text":"Your blood level drains over time. Slay living creatures to refill blood.","italic":false,"color":"green"}]}},{"text":"hungry","bold":true,"italic":true,"color":"dark_red","hoverEvent":{"action":"show_text","contents":[{"text":"Your blood level drains over time. Slay living creatures to refill blood.","italic":false,"color":"green"}]}},{"text":"...","italic":true,"color":"dark_red","hoverEvent":{"action":"show_text","contents":[{"text":"Your blood level drains over time. Slay living creatures to refill blood.","italic":false,"color":"green"}]}}]
effect give @s instant_damage 1 1 true
tag @s remove dc_castBatSwarm

# Effects
particle minecraft:dust 1 0 0 10 ~ ~1 ~ 0.4 0.4 0.4 0 15
playsound minecraft:entity.bat.takeoff player @a ~ ~ ~ 1 1
playsound minecraft:entity.bat.loop player @a ~ ~ ~ 0.1 1