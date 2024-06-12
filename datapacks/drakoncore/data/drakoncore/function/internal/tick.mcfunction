# Runs 20 times per second globally

function #drakoncore:tick
execute as @a at @s run function drakoncore:internal/players/player_tick
execute as @e[type=#drakoncore:vanilla/all_mobs,tag=!dc_mobSpawned,tag=!dc_marker] at @s run function drakoncore:internal/entities/on_mob_spawn
function drakoncore:internal/misc/auth_players