# Runs 20 times per second on each entity
execute if entity @s[type=armor_stand,tag=dc_thrownAxe] positioned ~ ~1.5 ~ positioned ^-0.375 ^ ^1 run function dc_throwable_axes:axe
execute if entity @s[type=!#dc_throwable_axes:non_damageable] run function dc_throwable_axes:check_dmg_delay