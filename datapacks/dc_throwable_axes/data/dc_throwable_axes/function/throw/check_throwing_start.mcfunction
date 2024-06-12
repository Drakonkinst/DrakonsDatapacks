# To throw an axe, must have just been holding a throwable axe AND
# now have an empty hand - from this we assume the player has thrown
# their axe with Q, not by dropping it from the inventory.
execute if entity @s[tag=dc_holdingThrowableAxe] unless data entity @s SelectedItem run function dc_throwable_axes:throw/check_just_thrown

# Update throwable axe holding with a 1-tick delay
tag @s remove dc_holdingThrowableAxe
execute if predicate dc_throwable_axes:holding_throwable_axe run tag @s add dc_holdingThrowableAxe

# Reset scores so there are no accidental misfires
scoreboard players reset @s dc_throwIAxe
scoreboard players reset @s dc_throwWAxe
scoreboard players reset @s dc_throwSAxe
scoreboard players reset @s dc_throwDAxe
scoreboard players reset @s dc_throwGAxe
scoreboard players reset @s dc_throwNAxe