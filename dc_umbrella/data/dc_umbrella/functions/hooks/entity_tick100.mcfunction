# Runs once every 5 seconds on each entity
execute if entity @s[type=armor_stand,tag=dc_umbrella] run function dc_umbrella:check_existing_player
execute if entity @s[type=armor_stand,tag=dc_umbrellaStand] run function dc_umbrella:check_existing_player