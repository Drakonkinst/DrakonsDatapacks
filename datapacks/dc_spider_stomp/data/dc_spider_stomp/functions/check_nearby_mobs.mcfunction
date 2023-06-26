# Only select mobs that are directly below the player
scoreboard players reset #Stomped dc_value
tag @s add dc_stomperAnchor
execute positioned ~ ~-1 ~ as @e[type=#dc_spider_stomp:can_stomp,dx=0,dy=1,dz=0] run function dc_spider_stomp:damage
tag @s remove dc_stomperAnchor
execute if score #Stomped dc_value matches 1.. run function dc_spider_stomp:on_stomp