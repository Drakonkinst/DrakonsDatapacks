# Smoke (requires Glowstone Dust)
execute if score #dc_gamerule_smokeBombsEnabled dc_value matches 1 if data entity @s Item.components."minecraft:firework_explosion"{shape:"small_ball"} run tag @s add dc_smokeBomb

# Fire: Large Ball (requires Fire Charge + Glowstone Dust)
execute if score #dc_gamerule_fireBombsEnabled dc_value matches 1 if data entity @s Item.components."minecraft:firework_explosion"{shape:"large_ball"} run tag @s add dc_fireBomb

# Redstone: Star-Shaped w/Flicker (requires Gold Nugget + Glowstone Dust)
execute if score #dc_gamerule_redstoneBombsEnabled dc_value matches 1 if data entity @s Item.components."minecraft:firework_explosion"{shape:"star"} run tag @s add dc_redstoneBomb

# Potato: Creeper-Shaped (requires Head + Glowstone Dust)
execute if score #dc_gamerule_blastBombsEnabled dc_value matches 1 if data entity @s Item.components."minecraft:firework_explosion"{shape:"creeper"} run tag @s add dc_potatoBomb

# Blast: Burst (requires Feather + Glowstone Dust)
execute if score #dc_gamerule_potatoBombsEnabled dc_value matches 1 if data entity @s Item.components."minecraft:firework_explosion"{shape:"burst"} run tag @s add dc_blastBomb

tag @s add dc_throwableBomb
playsound minecraft:entity.tnt.primed player @a ~ ~ ~ 2 2