tellraw @a[tag=dc_attachAnchor,limit=1] {"text":"Boats attached!","color":"gray"}
ride @e[type=#drakoncore:boats,tag=dc_otherTargetedBoat,limit=1] mount @s
execute at @s run playsound minecraft:entity.leash_knot.place block @a