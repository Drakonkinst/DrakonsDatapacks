execute if score @s dc_bloodLevel matches 1..30 run tellraw @s ["",{"text":"You are ","italic":true,"color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Your blood level drains over time. Slay living creatures to refill blood.","italic":false,"color":"green"}]}},{"text":"critical","bold":true,"italic":true,"color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Your blood level drains over time. Slay living creatures to refill blood.","italic":false,"color":"green"}]}},{"text":"...","italic":true,"color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Your blood level drains over time. Slay living creatures to refill blood.","italic":false,"color":"green"}]}}]
execute if score @s dc_bloodLevel matches 121..150 run tellraw @s ["",{"text":"You are ","italic":true,"color":"dark_red","hoverEvent":{"action":"show_text","contents":[{"text":"Your blood level drains over time. Slay living creatures to refill blood.","italic":false,"color":"green"}]}},{"text":"hungry","bold":true,"italic":true,"color":"dark_red","hoverEvent":{"action":"show_text","contents":[{"text":"Your blood level drains over time. Slay living creatures to refill blood.","italic":false,"color":"green"}]}},{"text":"...","italic":true,"color":"dark_red","hoverEvent":{"action":"show_text","contents":[{"text":"Your blood level drains over time. Slay living creatures to refill blood.","italic":false,"color":"green"}]}}]
execute if score @s dc_bloodLevel matches 361..400 run tellraw @s ["",{"text":"You are ","italic":true,"color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Your blood level drains over time. Slay living creatures to refill blood.","italic":false,"color":"green"}]}},{"text":"content","bold":true,"italic":true,"color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Your blood level drains over time. Slay living creatures to refill blood.","italic":false,"color":"green"}]}},{"text":"...","italic":true,"color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Your blood level drains over time. Slay living creatures to refill blood.","italic":false,"color":"green"}]}}]
execute if score @s dc_bloodLevel matches 601..630 run tellraw @s ["",{"text":"You are ","italic":true,"color":"light_purple","hoverEvent":{"action":"show_text","contents":[{"text":"Your blood level drains over time. Slay living creatures to refill blood.","italic":false,"color":"green"}]}},{"text":"sated","italic":true,"bold":true,"color":"light_purple","hoverEvent":{"action":"show_text","contents":[{"text":"Your blood level drains over time. Slay living creatures to refill blood.","italic":false,"color":"green"}]}},{"text":"...","italic":true,"color":"light_purple","hoverEvent":{"action":"show_text","contents":[{"text":"Your blood level drains over time. Slay living creatures to refill blood.","italic":false,"color":"green"}]}}]
scoreboard players remove @s dc_bloodLevel 20
execute if score @s dc_bloodLevel matches ..-1 run scoreboard players set @s dc_bloodLevel 0