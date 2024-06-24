# Summons new interactive below target (for smooth teleportation/visibility)
# Duration: -1 is the same thing as infinite duration
summon villager ~ -64 ~ {active_effects:[{id:"minecraft:invisibility",show_icon:0b,show_particles:0b,duration:-1}],Silent:1b,Invulnerable:1b,Offers:{},Tags:["dc_interact","new"],NoAI:1b,Team:"no_collision"}

# Teleports new invisible villager to target
execute as @e[type=villager,tag=new,limit=1] run function drakoncore:internal/interact/on_summon