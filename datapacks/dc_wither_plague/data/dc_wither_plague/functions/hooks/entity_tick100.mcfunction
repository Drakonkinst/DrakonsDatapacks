# Runs once every 5 seconds on each entity
execute if predicate dc_wither_plague:has_wither as @e[distance=..2,type=#drakoncore:living_mobs] run function dc_wither_plague:spread_wither