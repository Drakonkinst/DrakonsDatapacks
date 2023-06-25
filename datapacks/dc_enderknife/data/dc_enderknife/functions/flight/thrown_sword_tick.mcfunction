tag @s add dc_swordInFlight

# Add tag dc_currentSwordThrower to the one who threw the axe
scoreboard players operation #SwordThrowerId dc_playerId = @s dc_playerId

data modify storage dc_enderknife:sword_data FlyingSword set from entity @s item
execute as @a if score #SwordThrowerId dc_playerId = @s dc_playerId run tag @s add dc_currentSwordThrower

execute run function dc_enderknife:flight/fly_normal

# Put out candles and campfires if no fire aspect
execute unless entity @s[tag=dc_swordFireAspect] if block ~ ~ ~ #minecraft:candles[lit=true] run function dc_enderknife:flight/put_out_candle
execute unless entity @s[tag=dc_swordFireAspect] if block ~ ~-0.5 ~ #minecraft:campfires[lit=true] positioned ~ ~-0.5 ~ run function dc_enderknife:flight/put_out_campfire

# Light candles and campfires if fire aspect
execute if entity @s[tag=dc_swordFireAspect] if block ~ ~ ~ #minecraft:candles[lit=false] run function dc_enderknife:flight/light_candle
execute if entity @s[tag=dc_swordFireAspect] if block ~ ~-0.5 ~ #minecraft:campfires[lit=false] positioned ~ ~-0.5 ~ run function dc_enderknife:flight/light_campfire

# On hit block events
execute if block ~ ~ ~ #dc_enderknife:cuttable run setblock ~ ~ ~ air destroy
execute if block ~ ~ ~ #dc_enderknife:water_cuttable run setblock ~ ~ ~ water destroy
execute if block ~ ~ ~ #dc_enderknife:mineable run function dc_enderknife:flight/cut_sword_mineable

execute if block ~ ~ ~ #dc_enderknife:single_cuttable run function dc_enderknife:flight/cut_single_block

# Permanently mark as soggy if it came into contact with water
execute if entity @s[tag=!dc_thrownSoggy] if predicate drakoncore:in_water run tag @s add dc_thrownSoggy

scoreboard players set #HitMob dc_value 0
execute unless block ~ ~ ~ #dc_enderknife:passable run function dc_enderknife:drop/check_damage

# On hit entity events - never hit the sword thrower
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#dc_enderknife:non_damageable,tag=!dc_thrownSword,tag=!dc_currentSwordThrower,tag=!dc_marker,dx=1,dz=1,dy=1] unless score @s dc_damageDelay matches 1.. run function dc_enderknife:damage/on_hit

# Particles and effects
execute if entity @s[tag=dc_swordFireAspect] run particle minecraft:flame ~ ~0.5 ~ 0 0 0 0 1 force
execute if entity @s[tag=dc_swordSharpness] run particle minecraft:enchanted_hit ~ ~0.5 ~ 0 0 0 0 1 force

# Drop if out of world y level
execute store result score @s dc_yPos run data get entity @s Pos[1]
execute if score @s dc_yPos matches ..-128 run function dc_enderknife:drop/drop_void

# Remove tags
tag @a remove dc_currentSwordThrower
tag @s remove dc_swordInFlight