# There can only be 1 mate, so avoid tagging multiple
execute unless score #FoundMate dc_value matches 1 run tag @s add dc_polarBearMate
scoreboard players set #FoundMate dc_value 1