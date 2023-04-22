# Mark player
scoreboard players operation #CurrentId dc_playerId = @s dc_playerId
execute as @a[tag=dc_vampire,tag=dc_inBatfly] if score @s dc_playerId = #CurrentId dc_playerId run tag @s add dc_batflyPlayer

# Rider check is handled on player side
#scoreboard players reset #RiderExists dc_value
#execute on passengers if entity @s[type=player,tag=dc_batflyPlayer] run scoreboard players set #RiderExists dc_value 1

# Kill bat if it doesn't find a matching player
execute unless entity @a[tag=dc_batflyPlayer,limit=1] run tag @s add dc_deadBatfly

# Rotate to match player
execute at @s rotated as @a[tag=dc_batflyPlayer,limit=1] run tp @s ~ ~ ~ ~ ~

execute if block ~ ~ ~ #drakoncore:water_type run tag @s add dc_inWater
execute if block ~ ~ ~ #drakoncore:waterloggable[waterlogged=true] run tag @s add dc_inWater

# Flight logic
execute at @s[tag=!dc_inWater] rotated as @a[tag=dc_batflyPlayer,limit=1] run tp ^ ^ ^0.4
execute at @s[tag=dc_inWater] rotated as @a[tag=dc_batflyPlayer,limit=1] run tp ^ ^ ^0.15

tag @s remove dc_inWater

# Kill batfly conditions
execute if predicate dc_vampire:bat_damaged run tag @s add dc_deadBatfly
execute unless block ^ ^ ^0.5 #drakoncore:non_solid run tag @s add dc_deadBatfly
execute unless predicate dc_vampire:is_dark run tag @s add dc_deadBatfly
execute unless score @a[tag=dc_batflyPlayer,limit=1] dc_bloodLevel matches 1.. run tag @s add dc_deadBatfly

# Kill batfly
execute if entity @s[tag=dc_deadBatfly] run function dc_vampire:batfly/kill_batfly

# Reset
tag @a remove dc_batflyPlayer