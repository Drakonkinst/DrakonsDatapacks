tag @s add dc_axeInFlight

# Add tag dc_currentAxeThrower to the one who threw the axe
scoreboard players operation #AxeThrowerId dc_playerId = @s dc_playerId

data modify storage dc_throwable_axes:axe_data FlyingAxe set from entity @s item
execute as @a if score #AxeThrowerId dc_playerId = @s dc_playerId run tag @s add dc_currentAxeThrower

execute unless entity @s[tag=dc_recallAxe] run function dc_throwable_axes:flight/fly_normal
execute if entity @s[tag=dc_recallAxe] run function dc_throwable_axes:flight/fly_recall

# Put out candles and campfires if no fire aspect
execute unless entity @s[tag=dc_axeFireAspect] if block ~ ~ ~ #minecraft:candles[lit=true] run function dc_throwable_axes:flight/put_out_candle
execute unless entity @s[tag=dc_axeFireAspect] if block ~ ~-0.5 ~ #minecraft:campfires[lit=true] positioned ~ ~-0.5 ~ run function dc_throwable_axes:flight/put_out_campfire

# Light candles and campfires if fire aspect
execute if entity @s[tag=dc_axeFireAspect] if block ~ ~ ~ #minecraft:candles[lit=false] run function dc_throwable_axes:flight/light_candle
execute if entity @s[tag=dc_axeFireAspect] if block ~ ~-0.5 ~ #minecraft:campfires[lit=false] positioned ~ ~-0.5 ~ run function dc_throwable_axes:flight/light_campfire

# On hit block events
execute if block ~ ~ ~ #dc_throwable_axes:cuttable run setblock ~ ~ ~ air destroy
execute if block ~ ~ ~ #dc_throwable_axes:water_cuttable run setblock ~ ~ ~ water destroy
execute if block ~ ~ ~ #dc_throwable_axes:mineable run function dc_throwable_axes:flight/cut_axe_mineable

# Permanently mark as soggy if it came into contact with water
execute if entity @s[tag=!dc_thrownSoggy] if predicate drakoncore:in_water run tag @s add dc_thrownSoggy

# Axe can only collide with blocks when not recalling
execute unless entity @s[tag=dc_recallAxe] if block ~ ~ ~ #dc_throwable_axes:single_cuttable run function dc_throwable_axes:flight/cut_single_block
execute unless entity @s[tag=dc_recallAxe] unless block ~ ~ ~ #dc_throwable_axes:passable run function dc_throwable_axes:drop/check_damage

# On hit entity events - never hit the axe thrower
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#dc_throwable_axes:non_damageable,tag=!dc_thrownAxe,tag=!dc_currentAxeThrower,tag=!dc_marker,dx=1,dz=1,dy=1] unless score @s dc_damageDelay matches 1.. run function dc_throwable_axes:damage/on_hit

# Particles and effects
execute if entity @s[tag=dc_axeFireAspect] run particle minecraft:flame ~ ~0.5 ~ 0 0 0 0 1 force
execute if entity @s[tag=dc_axeSharpness] run particle minecraft:enchanted_hit ~ ~0.5 ~ 0 0 0 0 1 force
playsound minecraft:entity.phantom.flap player @a ~ ~ ~ 1 2

# Drop if out of world y level
execute store result score @s dc_yPos run data get entity @s Pos[1]
execute if score @s dc_yPos matches ..-128 run function dc_throwable_axes:drop/drop_void

# Remove tags
tag @a remove dc_currentAxeThrower
tag @s remove dc_axeInFlight