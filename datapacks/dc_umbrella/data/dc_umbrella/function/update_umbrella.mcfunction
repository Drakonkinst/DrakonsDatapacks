scoreboard players operation #CurrentId dc_playerId = @s dc_playerId
execute as @e[type=armor_stand,tag=dc_umbrella] if score @s dc_playerId = #CurrentId dc_playerId run tag @s add dc_matchingUmbrella
execute as @e[type=armor_stand,tag=dc_umbrellaStand] if score @s dc_playerId = #CurrentId dc_playerId run tag @s add dc_matchingUmbrellaStand
execute unless entity @e[type=armor_stand,tag=dc_matchingUmbrella,limit=1] run function dc_umbrella:summon_umbrella

# Both should now be marked
tp @e[type=armor_stand,tag=dc_matchingUmbrella,limit=1] ~ ~1 ~ ~ ~
tp @e[type=armor_stand,tag=dc_matchingUmbrellaStand,limit=1] ~0.16 ~1.2 ~-0.25
execute if predicate drakoncore:is_sneaking run function dc_umbrella:while_sneaking
execute unless predicate dc_umbrella:moving_slowly run tag @s remove dc_holdingUmbrella

# Reset
tag @e[type=armor_stand] remove dc_matchingUmbrella
tag @e[type=armor_stand] remove dc_matchingUmbrellaStand