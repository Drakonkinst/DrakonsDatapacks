scoreboard players remove @s dc_nbCharge 1

execute if score @s dc_nbCharge matches 5.. run title @s actionbar ["",{"text":"Nightblood","color":"dark_red"},{"text":": ","color":"dark_gray"},{"text":"DRAWING","color":"gray"}]
execute if score @s dc_nbCharge matches 4 run title @s actionbar ["",{"text":"Nightblood","color":"dark_red"},{"text":": ","color":"dark_gray"},{"text":"DR","color":"red"},{"text":"AWING","color":"gray"}]
execute if score @s dc_nbCharge matches 3 run title @s actionbar ["",{"text":"Nightblood","color":"dark_red"},{"text":": ","color":"dark_gray"},{"text":"DRA","color":"red"},{"text":"WING","color":"gray"}]
execute if score @s dc_nbCharge matches 2 run title @s actionbar ["",{"text":"Nightblood","color":"dark_red"},{"text":": ","color":"dark_gray"},{"text":"DRAWI","color":"red"},{"text":"NG","color":"gray"}]
execute if score @s dc_nbCharge matches 1 run title @s actionbar ["",{"text":"Nightblood","color":"dark_red"},{"text":": ","color":"dark_gray"},{"text":"DRAWIN","color":"red"},{"text":"G","color":"gray"}]

execute if score @s dc_nbCharge matches 5 run playsound minecraft:entity.phantom.ambient player @s ~ ~ ~ 1 0
execute if score @s dc_nbCharge matches 5 if predicate dc_nightblood:chance_talk_use run function dc_nightblood:talk/unsheathe
execute if score @s dc_nbCharge matches 3 run playsound minecraft:entity.phantom.ambient player @s ~ ~ ~ 1 0.5
execute if score @s dc_nbCharge matches 1 run playsound minecraft:entity.phantom.ambient player @s ~ ~ ~ 1 1.5
execute if score @s dc_nbCharge matches ..0 run function dc_nightblood:sheathed/finish_unsheathe