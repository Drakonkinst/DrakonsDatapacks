loot spawn ~ ~ ~ loot dc_wishing_well:rare
execute if predicate dc_wishing_well:chance_chicken run summon chicken ~ ~ ~ {active_effects:[{id:"minecraft:resistance",amplifier:6b,duration:100,show_icon:0b,show_particles:0b}]}
tag @s[type=item] add dc_eggGiven
