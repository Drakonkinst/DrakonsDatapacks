# When config command is run
execute if score @s config matches 100 run tellraw @s ["",{"text":"Smoke Bombs","color":"gold"},{"text":": ","color":"gray"},{"text":"ENABLE","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set #DC_SMOKE_BOMB dc_value 1"}},{"text":" | ","color":"gray"},{"text":"DISABLE","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set #DC_SMOKE_BOMB dc_value 0"}},{"text":"\nFire Bombs","color":"gold"},{"text":": ","color":"gray"},{"text":"ENABLE","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set #DC_FIRE_BOMB dc_value 1"}},{"text":" | ","color":"gray"},{"text":"DISABLE","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set #DC_FIRE_BOMB dc_value 0"}},{"text":"\nRedstone Bombs","color":"gold"},{"text":": ","color":"gray"},{"text":"ENABLE","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set #DC_REDSTONE_BOMB dc_value 1"}},{"text":" | ","color":"gray"},{"text":"DISABLE","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set #DC_REDSTONE_BOMB dc_value 0"}},{"text":"\nBlast Bombs","color":"gold"},{"text":": ","color":"gray"},{"text":"ENABLE","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set #DC_BLAST_BOMB dc_value 1"}},{"text":" | ","color":"gray"},{"text":"DISABLE","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set #DC_BLAST_BOMB dc_value 0"}},{"text":"\nPotato Bombs","color":"gold"},{"text":": ","color":"gray"},{"text":"ENABLE","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set #DC_POTATO_BOMB dc_value 1"}},{"text":" | ","color":"gray"},{"text":"DISABLE","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set #DC_POTATO_BOMB dc_value 0"}}]