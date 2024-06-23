particle minecraft:dust{scale:4,color:[1,0,0]} ~ ~ ~ 0.1 0.1 0.1 0 3
scoreboard players reset @s dc_bloodLevel
effect give @a[tag=dc_vampireAnchor,tag=!dc_castBatSwarm,limit=1] instant_health 1 1 true
tag @a[tag=dc_vampireAnchor,limit=1] add dc_absorbSuccess
function drakoncore:api/clear_entity