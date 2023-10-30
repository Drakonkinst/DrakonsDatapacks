# Runs 20 times per second on each player
execute if entity @s[tag=dc_werewolf] run function dc_werewolf:werewolf_tick

execute if predicate dc_werewolf:holding_lead run function dc_werewolf:leash/check_looking_at_wolf
execute if entity @s[tag=dc_awaitWolfLead,tag=!dc_lookingAtWolf] run function dc_werewolf:leash/deinit_player_interact
tag @s remove dc_lookingAtWolf