# Runs 20 times per second globally
# scoreboard players add #SwordRotationTick dc_value 1
# execute if score #SwordRotationTick dc_value matches 2 run function dc_enderknife:flight/thrown_sword_custom_tick

execute as @e[type=item_display,tag=dc_thrownSword] at @s run function dc_enderknife:flight/thrown_sword_tick
execute as @e[type=!#dc_enderknife:non_damageable,scores={dc_damageDelay=0..}] run function dc_enderknife:check_dmg_delay