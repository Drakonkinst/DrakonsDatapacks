# If any kind of projectile is near, become invulnerable
scoreboard players set #ProjectileNearby dc_value 0
execute if entity @e[type=#drakoncore:projectiles,distance=..4,predicate=dc_revenant:exclude_flying_projectiles,limit=1] run scoreboard players set #ProjectileNearby dc_value 1
execute store result score #IsInvulnerable dc_value run data get entity @s Invulnerable

execute if score #ProjectileNearby dc_value matches 1 if score #IsInvulnerable dc_value matches 0 run playsound minecraft:item.shield.block hostile @a ~ ~ ~ 1 1
execute if score #ProjectileNearby dc_value matches 1 if score #IsInvulnerable dc_value matches 0 run data modify entity @s Invulnerable set value 1b
execute if score #ProjectileNearby dc_value matches 0 if score #IsInvulnerable dc_value matches 1 run data modify entity @s Invulnerable set value 0b

# If throwing axe is nearby, stop it (unless it is recalling, which is allowed to hit them)
execute as @e[type=item_display,tag=dc_thrownAxe,tag=!dc_recallAxe,distance=..3] at @s run function dc_revenant:stop_thrown_axe

# If throwing sword is nearby, stop it
execute as @e[type=item_display,tag=dc_thrownSword,distance=..3] at @s run function dc_revenant:stop_thrown_sword