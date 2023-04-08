# Runs 20 times per second
scoreboard players add #AxeRotationTick dc_value 1
execute if score #AxeRotationTick dc_value matches 2 run function dc_throwable_axes:flight/thrown_axe_custom_tick