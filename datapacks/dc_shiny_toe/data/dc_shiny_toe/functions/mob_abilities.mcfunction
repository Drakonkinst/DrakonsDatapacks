tag @s add dc_pullAnchor
execute as @a[distance=2..7,gamemode=!creative,gamemode=!spectator] run function dc_shiny_toe:pull_player
tag @s remove dc_pullAnchor

execute if entity @e[type=#drakoncore:living_mobs,limit=1,distance=..2] run function dc_shiny_toe:spread_wither