tellraw @s ["",{"text":"Manhunt Menu","color":"gold","underlined":true},{"text":"\n\nSelect your role:\n","color":"blue"},{"text":"SPEEDRUNNER","bold":true,"color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Become the Speedrunner!","color":"gold"}]},"clickEvent":{"action":"run_command","value":"/trigger manhunt set 2"}},{"text":" | ","color":"gray"},{"text":"HUNTER","bold":true,"color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Become a Hunter!","color":"gold"}]},"clickEvent":{"action":"run_command","value":"/trigger manhunt set 3"}},{"text":"\n(Click here to reset role)","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Reset your role.","color":"gold"}]},"clickEvent":{"action":"run_command","value":"/trigger manhunt set 4"}}]
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.1