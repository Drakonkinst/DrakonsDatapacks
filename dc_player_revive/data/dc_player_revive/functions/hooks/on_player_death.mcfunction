# Run when a player dies

execute if entity @s[tag=dc_revivingPlayer] run function dc_player_revive:stop_reviving_player
execute if entity @a[distance=..50,tag=!dc_dead_player,limit=1] run function dc_player_revive:spawn_grave
execute unless entity @a[distance=..75,tag=!dc_dead_player,limit=1] run kill @e[tag=grave,type=armor_stand,distance=..50]