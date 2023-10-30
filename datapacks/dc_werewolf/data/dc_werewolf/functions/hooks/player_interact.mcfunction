# Runs when a player interacts with their own player interaction entity
# Score #IsRightClick dc_value tracks whether it was a left or right click

# I'll be lazy here and just select the nearest werewolf
# Using distance ..5 instead of ..4 for leeway
execute if entity @s[tag=dc_awaitWolfLead] if predicate dc_werewolf:holding_lead run data modify entity @e[type=wolf,distance=..5,tag=dc_werewolfModel,limit=1,sort=nearest] Leash.UUID set from entity @s UUID