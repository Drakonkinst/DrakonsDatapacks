scoreboard players remove @s dc_nbCharge 1

execute if score @s dc_nbCharge matches 5.. run title @s actionbar ["",{"text":"Nightblood","color":"dark_red"},{"text":": ","color":"dark_gray"},{"text":"SHEATHING","color":"red","bold":true}]
execute if score @s dc_nbCharge matches 4 run title @s actionbar ["",{"text":"Nightblood","color":"dark_red"},{"text":": ","color":"dark_gray"},{"text":"SHEATHIN","color":"red","bold":true},{"text":"G","color":"gray","bold":true}]
execute if score @s dc_nbCharge matches 3 run title @s actionbar ["",{"text":"Nightblood","color":"dark_red"},{"text":": ","color":"dark_gray"},{"text":"SHEATH","color":"red","bold":true},{"text":"ING","color":"gray","bold":true}]
execute if score @s dc_nbCharge matches 2 run title @s actionbar ["",{"text":"Nightblood","color":"dark_red"},{"text":": ","color":"dark_gray"},{"text":"SHEA","color":"red","bold":true},{"text":"THING","color":"gray","bold":true}]
execute if score @s dc_nbCharge matches 1 run title @s actionbar ["",{"text":"Nightblood","color":"dark_red"},{"text":": ","color":"dark_gray"},{"text":"SH","color":"red","bold":true},{"text":"EATHING","color":"gray","bold":true}]

execute if score @s dc_nbCharge matches 5 run playsound minecraft:entity.phantom.ambient player @s ~ ~ ~ 1 1.5
execute if score @s dc_nbCharge matches 5 if predicate dc_nightblood:chance_talk_held run function dc_nightblood:talk/sheathe
execute if score @s dc_nbCharge matches 3 run playsound minecraft:entity.phantom.ambient player @s ~ ~ ~ 1 0.5
execute if score @s dc_nbCharge matches 1 run playsound minecraft:entity.phantom.ambient player @s ~ ~ ~ 1 0
execute if score @s dc_nbCharge matches ..0 run function dc_nightblood:unsheathed/finish_sheathe