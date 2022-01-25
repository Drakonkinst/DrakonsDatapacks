tag @s add dc_dead_player
advancement revoke @s only drakoncore:death
function #drakoncore:on_player_death
scoreboard players reset @s dc_recentDeath