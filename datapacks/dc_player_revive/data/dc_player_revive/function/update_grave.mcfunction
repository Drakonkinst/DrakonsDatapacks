execute if entity @a[distance=..3,tag=!dc_dead_player,limit=1] run tag @s add dc_beingRevived
execute if score @s[tag=!dc_beingRevived] dc_reviveTick matches 1.. run function dc_player_revive:reset_revive_progress
execute if score @s[tag=dc_beingRevived] dc_reviveTick matches ..9 run function dc_player_revive:progress_revive
tag @s remove dc_beingRevived
