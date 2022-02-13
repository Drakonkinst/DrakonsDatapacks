execute as @e[type=!#dc_symbiote:invalid_host,limit=1,tag=dc_currentHost] run function dc_symbiote:possess/violent_damage
particle minecraft:block minecraft:end_portal ~ ~1 ~ 0 0.5 0 0 100
playsound minecraft:entity.drowned.death_water player @a ~ ~ ~ 1 0.5
playsound minecraft:entity.magma_cube.death player @a ~ ~ ~ 1 0
playsound minecraft:block.bubble_column.whirlpool_inside player @a ~ ~ ~ 1 1
effect give @s minecraft:regeneration 2 4 true
function dc_symbiote:possess/exit