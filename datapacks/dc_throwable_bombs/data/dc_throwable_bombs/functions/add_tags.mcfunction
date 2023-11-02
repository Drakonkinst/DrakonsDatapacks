execute store result score #ExplosionType dc_value run data get entity @s Item.tag.Explosion.Type

# Smoke (requires Glowstone Dust)
execute if score #ExplosionType dc_value matches 0 if score #dc_gamerule_smokeBombsEnabled dc_value matches 1 run tag @s add dc_smokeBomb

# Fire: Large Ball (requires Fire Charge + Glowstone Dust)
execute if score #ExplosionType dc_value matches 1 if score #dc_gamerule_fireBombsEnabled dc_value matches 1 run tag @s add dc_fireBomb

# Redstone: Star-Shaped w/Flicker (requires Gold Nugget + Glowstone Dust)
execute if score #ExplosionType dc_value matches 2 if score #dc_gamerule_redstoneBombsEnabled dc_value matches 1 run tag @s add dc_redstoneBomb

# Potato: Creeper-Shaped (requires Head + Glowstone Dust)
execute if score #ExplosionType dc_value matches 3 if score #dc_gamerule_blastBombsEnabled dc_value matches 1 run tag @s add dc_potatoBomb

# Blast: Burst (requires Feather + Glowstone Dust)
execute if score #ExplosionType dc_value matches 4 if score #dc_gamerule_potatoBombsEnabled dc_value matches 1 run tag @s add dc_blastBomb

tag @s add dc_throwableBomb
playsound minecraft:entity.tnt.primed player @a ~ ~ ~ 2 2