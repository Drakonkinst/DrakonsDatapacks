# Display config submenu
tellraw @s ["","Polar Bear AI Visuals: ",{"text":"ON","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set #SHOW_AI dc_value 1"}}," | ",{"text":"OFF","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players reset #SHOW_AI dc_value"}}]