# Runs 20 times per second on each entity
execute if entity @s[type=item_display,tag=dc_thrownAxe] run function dc_throwable_axes:flight/thrown_axe_tick
execute if entity @s[type=!#dc_throwable_axes:non_damageable] run function dc_throwable_axes:check_dmg_delay