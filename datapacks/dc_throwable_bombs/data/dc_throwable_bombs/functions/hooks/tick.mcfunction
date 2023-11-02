# Runs 20 times per second globally
execute as @e[type=item,tag=!dc_throwableBombsChecked] run function dc_throwable_bombs:check_item
execute as @e[type=item,tag=dc_throwableBomb] at @s run function dc_throwable_bombs:tick