# Run when a player dies

execute if entity @s[tag=dc_revivingPlayer] run function dc_player_revive:stop_reviving_player
execute if entity @a[distance=..250,tag=!dc_dead_player,limit=1] run function dc_player_revive:spawn_grave
execute unless entity @a[distance=..300,tag=!dc_dead_player,limit=1] run kill @e[type=armor_stand,tag=dc_grave,distance=..50]