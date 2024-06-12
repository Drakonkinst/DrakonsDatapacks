# Runs once per second on each player
execute if entity @s[gamemode=!spectator] if block ~ ~-0.1 ~ ender_chest run function dc_xp_storage:deposit/deposit