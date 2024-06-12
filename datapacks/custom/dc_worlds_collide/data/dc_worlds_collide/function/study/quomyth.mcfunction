# Wolves owned

scoreboard players set #WolvesOwned dc_value 0
tag @s add dc_ownerAnchor
execute as @e[type=wolf] on owner if entity @s[tag=dc_ownerAnchor] run scoreboard players add #WolvesOwned dc_value 1
tag @s remove dc_ownerAnchor
tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Dogs Owned","color":"gray"},{"text":": ","color":"dark_gray"},{"score":{"name":"#WolvesOwned","objective":"dc_value"}}]

# Pumpkin Pies Eaten
execute if score @s dc_piesEaten matches 0.. run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Pumpkin Pies Eaten","color":"gray"},{"text":": ","color":"dark_gray"},{"score":{"name":"@s","objective":"dc_piesEaten"}}]
