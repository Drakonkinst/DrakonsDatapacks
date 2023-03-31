execute if score @s dc_broodmother_stage matches ..28 run scoreboard players add @s dc_broodmother_stage 2
execute if predicate dc_arachnid_broodmother:chance_cobweb if block ~ ~ ~ #drakoncore:air run setblock ~ ~ ~ cobweb
execute if predicate dc_arachnid_broodmother:chance_cobweb if block ~1 ~ ~ #drakoncore:air run setblock ~1 ~ ~ cobweb
execute if predicate dc_arachnid_broodmother:chance_cobweb if block ~-1 ~ ~ #drakoncore:air run setblock ~-1 ~ ~ cobweb
execute if predicate dc_arachnid_broodmother:chance_cobweb if block ~ ~ ~1 #drakoncore:air run setblock ~ ~ ~1 cobweb
execute if predicate dc_arachnid_broodmother:chance_cobweb if block ~ ~ ~-1 #drakoncore:air run setblock ~ ~ ~-1 cobweb
execute if score @s dc_broodmother_stage matches 6.. run effect give @s slowness 2 0
execute if score @s dc_broodmother_stage matches 11.. run effect give @s poison 2 0
execute if score @s dc_broodmother_stage matches 16.. run effect give @s slowness 2 1
execute if score @s dc_broodmother_stage matches 21.. run effect give @s mining_fatigue 2 0
execute if score @s dc_broodmother_stage matches 26.. run effect give @s poison 2 1
playsound minecraft:item.crossbow.loading_middle hostile @a ~ ~ ~ 1 1
playsound minecraft:entity.spider.hurt hostile @a ~ ~ ~ 1 2