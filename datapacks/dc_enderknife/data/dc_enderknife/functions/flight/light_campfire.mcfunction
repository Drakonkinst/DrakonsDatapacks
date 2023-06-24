playsound minecraft:item.firecharge.use block @a ~ ~ ~ 1 1

execute if block ~ ~ ~ campfire[facing=west] run setblock ~ ~ ~ campfire[lit=true,facing=west]
execute if block ~ ~ ~ campfire[facing=east] run setblock ~ ~ ~ campfire[lit=true,facing=east]
execute if block ~ ~ ~ campfire[facing=south] run setblock ~ ~ ~ campfire[lit=true,facing=south]
execute if block ~ ~ ~ campfire[facing=north] run setblock ~ ~ ~ campfire[lit=true,facing=north]

execute if block ~ ~ ~ soul_campfire[facing=west] run setblock ~ ~ ~ soul_campfire[lit=true,facing=west]
execute if block ~ ~ ~ soul_campfire[facing=east] run setblock ~ ~ ~ soul_campfire[lit=true,facing=east]
execute if block ~ ~ ~ soul_campfire[facing=south] run setblock ~ ~ ~ soul_campfire[lit=true,facing=south]
execute if block ~ ~ ~ soul_campfire[facing=north] run setblock ~ ~ ~ soul_campfire[lit=true,facing=north]