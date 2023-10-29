# This runs before the normal hunger effects, so we need to delay it by one tick
tag @s[tag=dc_werewolf] add dc_clearHunger
execute if entity @s[tag=dc_werewolf] run schedule function dc_werewolf:clear_hunger_from_tagged 1t replace
advancement revoke @s only dc_werewolf:eat_unsafe_meat