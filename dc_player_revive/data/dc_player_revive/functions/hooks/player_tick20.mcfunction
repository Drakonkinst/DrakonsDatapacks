# Runs once per second on each player

execute if entity @s[tag=dc_hasGrave] run function dc_player_revive:update_player

# Scuffed fix to account for if the grave is deleted after being revived
execute if entity @s[tag=!dc_hasGrave,tag=dc_revived] run function dc_player_revive:update_player