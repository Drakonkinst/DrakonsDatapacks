title @s title ["",{"text":"<","color":"gray"},{"text":"<","color":"gray"},{"text":"< ","color":"red","bold":true},{"text":" ","color":"red"},{"text":" >","color":"red","bold":true},{"text":">","color":"gray"},{"text":">","color":"gray"}]
execute if score @s dc_hb_prevStage matches 0 run playsound minecraft:entity.evoker.cast_spell player @s ~ ~ ~ 10 2
effect give @s strength 1 1 true