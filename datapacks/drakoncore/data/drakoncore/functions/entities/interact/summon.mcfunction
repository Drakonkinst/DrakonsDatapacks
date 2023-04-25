# Summons new interactive below target (for smooth teleportation/visibility)
# Duration: -1 is the same thing as infinite duration
summon villager ~ -64 ~ {ActiveEffects:[{Id:14,Amplifier:0,Duration:-1,ShowParticles:0b}],Silent:1b,Invulnerable:1b,Offers:{},Tags:["dc_interact","new"],NoAI:1b,Team:"no_collision"}

# Teleports new invisible villager to target
execute as @e[type=villager,tag=new,limit=1] run function drakoncore:entities/interact/on_summon