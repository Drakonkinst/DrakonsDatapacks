# Always spend the last tick doing nothing
execute if score @s dc_roombaTimer matches 2.. run function dc_roomba:do_ai

# Gravity always happens unless standing on levitation block, two-step check
execute unless entity @s[tag=dc_roombaLevitate] run function dc_roomba:check_gravity