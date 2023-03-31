function dc_umbrella:mark_umbrella
execute unless entity @e[type=armor_stand,tag=dc_matchingUmbrella,limit=1] run function dc_umbrella:summon_umbrella
function dc_umbrella:mark_umbrella_stand

# Both should now be marked
tp @e[type=armor_stand,tag=dc_matchingUmbrella,limit=1] ~ ~1 ~ ~ ~
tp @e[type=armor_stand,tag=dc_matchingUmbrellaStand,limit=1] ~0.16 ~1.2 ~-0.25
execute if predicate drakoncore:is_sneaking run function dc_umbrella:while_sneaking
execute unless predicate dc_umbrella:moving_slowly run tag @s remove dc_holdingUmbrella

# Reset
function dc_umbrella:unmark_umbrella
function dc_umbrella:unmark_umbrella_stand