# Display help submenu
execute if score @s help matches 1 run tellraw @s ["",{"text":"/trigger hat","color":"green","clickEvent":{"action":"run_command","value":"/trigger hat"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click to run this command!","color":"gold"}]}},{"text":" - ","color":"gray"},{"text":"Puts the block you're currently holding on your head!","color":"dark_purple"}]