# Runs once per second on each player
execute store result score #MaxHealth dc_value run attribute @s minecraft:generic.max_health get
execute if score @s dc_health < #MaxHealth dc_value run function dc_restful_sleep:check_restful_sleep