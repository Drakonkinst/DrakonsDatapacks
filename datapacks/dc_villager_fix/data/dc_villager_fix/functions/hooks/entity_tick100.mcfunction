# Runs once every 5 seconds on each entity
execute if entity @s[type=villager,tag=!dc_fixedTrades] unless predicate dc_villager_fix:no_profession run function dc_villager_fix:fix_trades