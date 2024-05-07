title @s times 0 0.5s 2s
execute if score @s dc_symbiotePossess matches ..24 run title @s subtitle {"text":"Leaving will harm your host","color":"red"}
execute if score @s dc_symbiotePossess matches 25 run title @s subtitle {"text":"Leaving is now harmless","color":"green"}
execute if score @s dc_symbiotePossess matches 1..2 run title @s title ["",{"text":"||||||||||||","color":"red"},{"text":"","color":"gray"}]
execute if score @s dc_symbiotePossess matches 3..4 run title @s title ["",{"text":"|||||||||||","color":"red"},{"text":"|","color":"gray"}]
execute if score @s dc_symbiotePossess matches 5..6 run title @s title ["",{"text":"||||||||||","color":"red"},{"text":"||","color":"gray"}]
execute if score @s dc_symbiotePossess matches 7..8 run title @s title ["",{"text":"|||||||||","color":"red"},{"text":"|||","color":"gray"}]
execute if score @s dc_symbiotePossess matches 9..10 run title @s title ["",{"text":"||||||||","color":"red"},{"text":"||||","color":"gray"}]
execute if score @s dc_symbiotePossess matches 11..12 run title @s title ["",{"text":"|||||||","color":"red"},{"text":"|||||","color":"gray"}]
execute if score @s dc_symbiotePossess matches 13..14 run title @s title ["",{"text":"||||||","color":"red"},{"text":"||||||","color":"gray"}]
execute if score @s dc_symbiotePossess matches 15..16 run title @s title ["",{"text":"|||||","color":"red"},{"text":"|||||||","color":"gray"}]
execute if score @s dc_symbiotePossess matches 17..18 run title @s title ["",{"text":"||||","color":"red"},{"text":"||||||||","color":"gray"}]
execute if score @s dc_symbiotePossess matches 19..20 run title @s title ["",{"text":"|||","color":"red"},{"text":"|||||||||","color":"gray"}]
execute if score @s dc_symbiotePossess matches 21..22 run title @s title ["",{"text":"||","color":"red"},{"text":"||||||||||","color":"gray"}]
execute if score @s dc_symbiotePossess matches 23..24 run title @s title ["",{"text":"|","color":"red"},{"text":"|||||||||||","color":"gray"}]
execute if score @s dc_symbiotePossess matches 25 run title @s title ["",{"text":"","color":"red"},{"text":"||||||||||||","color":"gray"}]