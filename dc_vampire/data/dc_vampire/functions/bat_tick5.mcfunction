# Give poison to all living mobs within 2 blocks
execute positioned ~-1 ~-1 ~-1 as @e[type=#drakoncore:living_mobs,type=!bat,tag=!dc_vampire,dx=2,dy=2,dz=2] run effect give @s poison 1 2 true
# If entity drained, give vampire regeneration
execute positioned ~-1 ~-1 ~-1 as @e[type=#drakoncore:living_mobs,type=!bat,tag=!dc_vampire,dx=2,dy=2,dz=2,limit=1] store result score @s dc_value run data get entity @s Health
execute positioned ~-1 ~-1 ~-1 if entity @e[type=#drakoncore:living_mobs,type=!bat,tag=!dc_vampire,dx=2,dy=2,dz=2,scores={dc_value=..0},limit=1] as @p[tag=dc_vampire,limit=1,distance=..6] unless predicate dc_vampire:has_regeneration run effect give @s regeneration 3 2 true