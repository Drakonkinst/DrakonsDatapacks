# Runs 20 times per second
scoreboard players add #AxeRotationTick dc_value 1
execute if score #AxeRotationTick dc_value matches 2 run function dc_throwable_axes:flight/thrown_axe_custom_tick

execute as @e[type=item_display,tag=dc_thrownAxe] at @s run function dc_throwable_axes:flight/thrown_axe_tick
execute as @e[type=!#dc_throwable_axes:non_damageable,tag=dc_hasDamageDelay] run function dc_throwable_axes:check_dmg_delay