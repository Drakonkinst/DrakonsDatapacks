# Runs once every second globally
execute if score #ShouldQueryUtility dc_value matches 1 run say TICK
execute if score #ShouldQueryUtility dc_value matches 1 if loaded 0 64 0 run function drakoncore:internal/entities/check_summon_utility
schedule function drakoncore:internal/tick20 1s
function #drakoncore:tick20
execute as @a at @s run function drakoncore:internal/players/player_tick20