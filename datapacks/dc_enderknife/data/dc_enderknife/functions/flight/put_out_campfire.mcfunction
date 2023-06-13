playsound minecraft:block.fire.extinguish block @a ~ ~ ~ 1 1

execute if block ~ ~ ~ campfire[facing=west] run setblock ~ ~ ~ campfire[lit=false,facing=west]
execute if block ~ ~ ~ campfire[facing=east] run setblock ~ ~ ~ campfire[lit=false,facing=east]
execute if block ~ ~ ~ campfire[facing=south] run setblock ~ ~ ~ campfire[lit=false,facing=south]
execute if block ~ ~ ~ campfire[facing=north] run setblock ~ ~ ~ campfire[lit=false,facing=north]

execute if block ~ ~ ~ soul_campfire[facing=west] run setblock ~ ~ ~ soul_campfire[lit=false,facing=west]
execute if block ~ ~ ~ soul_campfire[facing=east] run setblock ~ ~ ~ soul_campfire[lit=false,facing=east]
execute if block ~ ~ ~ soul_campfire[facing=south] run setblock ~ ~ ~ soul_campfire[lit=false,facing=south]
execute if block ~ ~ ~ soul_campfire[facing=north] run setblock ~ ~ ~ soul_campfire[lit=false,facing=north]