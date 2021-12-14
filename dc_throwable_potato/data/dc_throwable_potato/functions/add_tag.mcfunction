# TODO: Config checks
# TODO: Optimization: if only based on type, store this in a score to avoid NBT checks
# Also store Flicker and Trail, which are the only other differentiating factors in #FireworkStarType, #FireworkStarFlicker, #FireworkStarTrail

execute store result score @s dc_value run data get entity @s Item.tag.Explosion.Type

# Smoke (requires Glowstone Dust)
execute if score @s dc_value matches 0 if score #DC_SMOKE_BOMB dc_value matches 1 run tag @s add type_smoke

# Fire: Large Ball (requires Fire Charge + Glowstone Dust)
execute if score @s dc_value matches 1 if score #DC_FIRE_BOMB dc_value matches 1 run tag @s add type_fire

# Redstone: Star-Shaped w/Flicker (requires Gold Nugget + Glowstone Dust)
execute if score @s dc_value matches 2 if score #DC_REDSTONE_BOMB dc_value matches 1 run tag @s add type_redstone

# Potato: Creeper-Shaped (requires Head + Glowstone Dust)
execute if score @s dc_value matches 3 if score #DC_POTATO_BOMB dc_value matches 1 run tag @s add type_potato

# Blast: Burst (requires Feather + Glowstone Dust)
execute if score @s dc_value matches 4 if score #DC_BLAST_BOMB dc_value matches 1 run tag @s add type_blast

tag @s add throwable_potato
playsound minecraft:entity.tnt.primed player @a ~ ~ ~ 2 2