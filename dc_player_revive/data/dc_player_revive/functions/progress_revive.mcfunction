tellraw @a[distance=..3,tag=!dc_revivingPlayer,tag=!dc_dead] ["",{"text":"Reviving ","color":"dark_aqua"},{"selector":"@s","color":"dark_aqua"},{"text":"...","color":"dark_aqua"}]
execute if entity @a[distance=..3,tag=!dc_revivingPlayer,tag=!dc_dead,limit=1] run tellraw @s ["",{"selector":"@a[distance=..3,tag=!dc_revivingPlayer,tag=!dc_dead]","color":"dark_aqua"},{"text":" has started to revive you, don't Respawn yet!","color":"dark_aqua"}]
tag @a[distance=..3,tag=!dc_revivingPlayer,tag=!dc_dead] add dc_revivingPlayer

execute at @a[distance=..3,tag=dc_revivingPlayer] run scoreboard players add @s dc_reviveTick 1
tag @s add dc_reviving

execute if score @s dc_reviveTick matches 1 run function dc_player_revive:progress_1
execute if score @s dc_reviveTick matches 2..3 run function dc_player_revive:progress_2
execute if score @s dc_reviveTick matches 4..5 run function dc_player_revive:progress_3
execute if score @s dc_reviveTick matches 6..7 run function dc_player_revive:progress_4 
execute if score @s dc_reviveTick matches 8..9 run function dc_player_revive:progress_5 
execute if score @s dc_reviveTick matches 10.. run function dc_player_revive:finish_revive
