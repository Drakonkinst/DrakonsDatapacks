# rotate:
scoreboard players add @s dc_axePose 30
execute store result entity @s Pose.RightArm.[0] float 1 run scoreboard players get @s dc_axePose

# Make sure to remove dc_currentAxeThrower later!
execute store result score #AxeThrower dc_temp_id run data get entity @s HandItems[0].tag.Thrower[0]
function dc_throwable_axes:tag_thrower

# Normal movement: move forward:
execute unless entity @s[tag=dc_recallAxe] positioned ~ ~-1.5 ~ positioned ^0.375 ^ ^-1 run tp @s ^ ^ ^2

# Normal movement: apply gravity
execute unless entity @s[tag=dc_recallAxe] positioned ~ ~-1.5 ~ positioned ^0.375 ^ ^ run tp @s ~ ~ ~ ~ ~1.5

# Recall: Move towards thrower
execute if entity @s[tag=dc_recallAxe] positioned ~ ~-1.5 ~ positioned ^0.375 ^ ^ facing entity @a[tag=dc_currentAxeThrower,limit=1] feet run tp @s ^ ^ ^3

# apply fire to hit entity:
execute if entity @s[tag=dc_axeFireAspect] positioned ~-0.5 ~-0.5 ~-0.5 as @e[tag=!dc_thrownAxe,tag=!damageDelay,type=!#dc_throwable_axes:non_damageable,dx=1,dz=1,dy=1,sort=nearest,limit=1] run data merge entity @s {Fire:80s}
execute if entity @s[tag=dc_axeFireAspect1] positioned ~-0.5 ~-0.5 ~-0.5 as @e[tag=!dc_thrownAxe,tag=!damageDelay,type=!#dc_throwable_axes:non_damageable,dx=1,dz=1,dy=1,sort=nearest,limit=1] run data merge entity @s {Fire:40s}

# particles and effects
execute if entity @s[tag=dc_axeFireAspect] run particle minecraft:flame ~ ~0.5 ~ 0 0 0 0 1 force
execute if entity @s[tag=dc_axeSharpness] run particle minecraft:enchanted_hit ~ ~0.5 ~ 0 0 0 0 1 force
playsound minecraft:entity.phantom.flap player @a ~ ~ ~ 1 2

# hit entity:
execute unless entity @s[tag=dc_recallAxe] if data entity @s HandItems.[{id:"minecraft:wooden_axe"}] positioned ~-0.5 ~-0.5 ~-0.5 as @e[tag=!dc_currentAxeThrower,tag=!dc_thrownAxe,tag=!damageDelay,type=!#dc_throwable_axes:non_damageable,dx=0,sort=nearest,limit=1] run function dc_throwable_axes:weak_axe_hit
execute unless entity @s[tag=dc_recallAxe] unless data entity @s HandItems.[{id:"minecraft:wooden_axe"}] positioned ~-0.5 ~-0.5 ~-0.5 as @e[tag=!dc_currentAxeThrower,tag=!dc_thrownAxe,tag=!damageDelay,type=!#dc_throwable_axes:non_damageable,dx=0,sort=nearest,limit=1] run function dc_throwable_axes:strong_axe_hit
execute unless entity @s[tag=dc_recallAxe] positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=!dc_thrownAxe,tag=!damageDelay,type=!#dc_throwable_axes:non_damageable,type=!enderman,dx=0] positioned ~0.5 ~0.5 ~0.5 run function dc_throwable_axes:drop/check

# hit while recalling, with a little larger radius:
execute if entity @s[tag=dc_recallAxe] positioned ~-0.5 ~-0.5 ~-0.5 as @e[tag=!dc_currentAxeThrower,tag=!dc_thrownAxe,tag=!damageDelay,type=!#dc_throwable_axes:non_damageable,dx=1,dz=1,dy=1,sort=nearest,limit=1] positioned ~0.5 ~0.5 ~0.5 run function dc_throwable_axes:weak_axe_hit

# pick up if recalling and you are the thrower:
execute if entity @s[tag=dc_recallAxe] positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[tag=dc_currentAxeThrower,distance=..2] positioned ~0.5 ~0.5 ~0.5 run function dc_throwable_axes:drop/drop

# cut single cuttable blocks and drop:
execute unless entity @s[tag=dc_recallAxe] positioned ~-0.5 ~-0.5 ~-0.5 unless entity @e[tag=!dc_thrownAxe,tag=!damageDelay,type=!#dc_throwable_axes:non_damageable,dx=0] positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #dc_throwable_axes:single_cuttable run function dc_throwable_axes:cut_single_block

# cut cuttable blocks:
execute positioned ~-0.5 ~-0.5 ~-0.5 unless entity @e[tag=!dc_thrownAxe,tag=!damageDelay,type=!#dc_throwable_axes:non_damageable,dx=0] positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #dc_throwable_axes:cuttable run setblock ~ ~ ~ air destroy

execute positioned ~-0.5 ~-0.5 ~-0.5 unless entity @e[tag=!dc_thrownAxe,tag=!damageDelay,type=!#dc_throwable_axes:non_damageable,dx=0] positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #dc_throwable_axes:water_cuttable run setblock ~ ~ ~ water destroy

# cut mineable blocks:
execute unless entity @s[tag=dc_recallAxe] positioned ~-0.5 ~-0.5 ~-0.5 unless entity @e[tag=!dc_thrownAxe,tag=!damageDelay,type=!#dc_throwable_axes:non_damageable,dx=0] positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #dc_throwable_axes:mineable run function dc_throwable_axes:cut_axe_mineable

# put out candles:
execute unless entity @s[tag=dc_axeFireAspect] if block ~ ~ ~ #minecraft:candles[lit=true] run function dc_throwable_axes:put_out_candle

# light candles
execute if entity @s[tag=dc_axeFireAspect] if block ~ ~ ~ #minecraft:candles[lit=false] run function dc_throwable_axes:light_candle

# put out campfires:
execute unless entity @s[tag=dc_axeFireAspect] if block ~ ~-0.5 ~ #minecraft:campfires[lit=true] positioned ~ ~-0.5 ~ run function dc_throwable_axes:put_out_campfire

# light campfires
execute if entity @s[tag=dc_axeFireAspect] if block ~ ~-0.5 ~ #minecraft:campfires[lit=false] positioned ~ ~-0.5 ~ run function dc_throwable_axes:light_campfire

# hit block:
execute unless entity @s[tag=dc_recallAxe] positioned ~-0.5 ~-0.5 ~-0.5 unless entity @e[tag=!dc_thrownAxe,tag=!damageDelay,type=!#dc_throwable_axes:non_damageable,dx=0] positioned ~0.5 ~0.5 ~0.5 unless block ~ ~ ~ #dc_throwable_axes:passable positioned ~ ~-0.5 ~ run function dc_throwable_axes:drop/check

# cause a block update: swap between air and cave air
execute if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:void_air replace
execute if block ~ ~ ~ minecraft:cave_air run setblock ~ ~ ~ minecraft:air replace
execute if block ~ ~ ~ minecraft:void_air run setblock ~ ~ ~ minecraft:cave_air replace

# drop if out of world y level:
execute store result score @s dc_yPos run data get entity @s Pos[1]
execute unless entity @s[scores={dc_yPos=-70..350}] run function dc_throwable_axes:drop/check

tag @a remove dc_currentAxeThrower