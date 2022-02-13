title @s times 0 10 40
execute if score @s dc_symbiotePossess matches ..12 run title @s subtitle {"text":"Sneak and move away to deal damage","color":"red"}
execute if score @s dc_symbiotePossess matches 13 run title @s subtitle {"text":"Leaving is now harmless","color":"green"}
execute if score @s dc_symbiotePossess matches 1 run title @s title ["",{"text":"||||||||||||","color":"red"},{"text":"","color":"gray"}]
execute if score @s dc_symbiotePossess matches 2 run title @s title ["",{"text":"|||||||||||","color":"red"},{"text":"|","color":"gray"}]
execute if score @s dc_symbiotePossess matches 3 run title @s title ["",{"text":"||||||||||","color":"red"},{"text":"||","color":"gray"}]
execute if score @s dc_symbiotePossess matches 4 run title @s title ["",{"text":"|||||||||","color":"red"},{"text":"|||","color":"gray"}]
execute if score @s dc_symbiotePossess matches 5 run title @s title ["",{"text":"||||||||","color":"red"},{"text":"||||","color":"gray"}]
execute if score @s dc_symbiotePossess matches 6 run title @s title ["",{"text":"|||||||","color":"red"},{"text":"|||||","color":"gray"}]
execute if score @s dc_symbiotePossess matches 7 run title @s title ["",{"text":"||||||","color":"red"},{"text":"||||||","color":"gray"}]
execute if score @s dc_symbiotePossess matches 8 run title @s title ["",{"text":"|||||","color":"red"},{"text":"|||||||","color":"gray"}]
execute if score @s dc_symbiotePossess matches 9 run title @s title ["",{"text":"||||","color":"red"},{"text":"||||||||","color":"gray"}]
execute if score @s dc_symbiotePossess matches 10 run title @s title ["",{"text":"|||","color":"red"},{"text":"|||||||||","color":"gray"}]
execute if score @s dc_symbiotePossess matches 11 run title @s title ["",{"text":"||","color":"red"},{"text":"||||||||||","color":"gray"}]
execute if score @s dc_symbiotePossess matches 12 run title @s title ["",{"text":"|","color":"red"},{"text":"|||||||||||","color":"gray"}]
execute if score @s dc_symbiotePossess matches 13 run title @s title ["",{"text":"","color":"red"},{"text":"||||||||||||","color":"gray"}]