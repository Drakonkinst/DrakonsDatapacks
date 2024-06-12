# Wandering Traders killed
execute if score @s dc_tradersKilled matches 0.. run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Traders Slain","color":"gray"},{"text":": ","color":"dark_gray"},{"score":{"name":"@s","objective":"dc_tradersKilled"}}]

# Sushi eaten
execute if score @s dc_sushiEaten matches 0.. run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Sushi Eaten","color":"gray"},{"text":": ","color":"dark_gray"},{"score":{"name":"@s","objective":"dc_sushiEaten"}}]