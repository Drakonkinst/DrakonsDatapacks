# Runs when a player interacts with their own player interaction entity
# Score #IsRightClick dc_value tracks whether it was a left or right click

execute if entity @s[tag=dc_awaitWolfInteract] if score #IsRightClick dc_value matches 1 run function dc_werewolf:interact/interact