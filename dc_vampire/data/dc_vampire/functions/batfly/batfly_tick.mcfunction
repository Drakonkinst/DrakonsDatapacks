# Mark player
tag @s add dc_batflyAnchor
execute as @a[tag=dc_vampire,tag=dc_inBatfly] run function dc_vampire:batfly/tag_matching_vampire
tag @s remove dc_batflyAnchor

# Kill bat if it doesn't find a matching player
execute unless entity @a[tag=dc_batflyPlayer,limit=1] run tag @s add dc_deadBatfly
#execute unless entity @a[tag=dc_batflyPlayer,limit=1] run say No matching player found

execute if block ~ ~ ~ #drakoncore:water_type run tag @s add dc_inWater
execute if block ~ ~ ~ #drakoncore:waterloggable[waterlogged=true] run tag @s add dc_inWater

# Execute different flight logic based on settings
execute unless score #VampireOldBatfly dc_value matches 1.. run function dc_vampire:batfly/fly_new
execute if score #VampireOldBatfly dc_value matches 1.. run function dc_vampire:batfly/fly_old

tag @s remove dc_inWater

# Kill batfly conditions
execute if predicate dc_vampire:bat_damaged run tag @s add dc_deadBatfly
#execute if predicate dc_vampire:bat_damaged run say Bat damaged
execute at @a[tag=dc_batflyPlayer,limit=1] anchored eyes positioned ~ ~1 ~ unless block ^ ^ ^0.4 #drakoncore:non_solid run tag @s add dc_deadBatfly
#execute at @a[tag=dc_batflyPlayer,limit=1] anchored eyes positioned ~ ~1 ~ unless block ^ ^ ^0.4 #drakoncore:non_solid run say Bat ran into block
execute unless predicate dc_vampire:is_dark run tag @s add dc_deadBatfly
#execute unless predicate dc_vampire:is_dark run say Bat is not in dark
execute unless score @a[tag=dc_batflyPlayer,limit=1] dc_bloodLevel matches 1.. run tag @s add dc_deadBatfly

# Kill batfly
execute if entity @s[tag=dc_deadBatfly] run function dc_vampire:batfly/kill_batfly

# Reset
tag @a remove dc_batflyPlayer