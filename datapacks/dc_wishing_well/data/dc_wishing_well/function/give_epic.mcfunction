loot spawn ~ ~ ~ loot dc_wishing_well:epic
execute if predicate dc_wishing_well:chance_allay run summon allay ~ ~ ~ {ActiveEffects:[{Id:11,Amplifier:6b,Duration:100,ShowParticles:0b}]}
tag @s[type=item] add dc_eggGiven