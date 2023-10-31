# Runs 20 times per second on each player
execute if entity @s[tag=dc_werewolf] run function dc_werewolf:werewolf_tick

execute if predicate dc_werewolf:holding_wolf_interactable run function dc_werewolf:interact/check_looking_at_wolf
execute if entity @s[tag=dc_awaitWolfInteract,tag=!dc_lookingAtWolf] run function dc_werewolf:interact/deinit_player_interact
tag @s remove dc_lookingAtWolf