# Runs when a player interacts with their own player interaction entity
# Score #IsRightClick dc_value tracks whether it was a left or right click

# I'll be lazy here and just select the nearest werewolf, biased towards look direction
# Instead of another raycast
# Using distance ..5 instead of ..4 for leeway
tag @s add dc_wolfLeasher
execute if entity @s[tag=dc_awaitWolfLead,tag=!dc_werewolfTransformed] if predicate dc_werewolf:holding_lead positioned ^ ^ ^1 as @e[type=wolf,tag=dc_werewolfModel,limit=1,distance=..5] run function dc_werewolf:leash/toggle_leash
tag @s remove dc_wolfLeasher