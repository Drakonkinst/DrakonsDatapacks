# To throw an sword, must have just been holding a throwable sword AND
# now have an empty hand - from this we assume the player has thrown
# their sword with Q, not by dropping it from the inventory.
execute if entity @s[tag=dc_holdingThrowableSword] unless data entity @s SelectedItem run function dc_enderknife:throw/check_just_thrown

# Update throwable axe holding with a 1-tick delay
tag @s remove dc_holdingThrowableSword
execute if predicate dc_enderknife:holding_throwable_sword run tag @s add dc_holdingThrowableSword

# Reset scores so there are no accidental misfires
scoreboard players reset @s dc_throwISword
scoreboard players reset @s dc_throwWSword
scoreboard players reset @s dc_throwSSword
scoreboard players reset @s dc_throwDSword
scoreboard players reset @s dc_throwGSword
scoreboard players reset @s dc_throwNSword