execute as @p[tag=dc_vampire,limit=1,distance=..6] unless predicate dc_vampire:has_regeneration run effect give @s regeneration 1 2 true
damage @s 1 dc_vampire:vampire_bat by @p[tag=dc_vampire,limit=1,distance=..6]

# Add 1 second to nearest vampire bat lifetime
execute as @e[type=bat,tag=dc_vampire_bat,distance=..6,sort=nearest,limit=1] if score @s dc_bloodLevel matches ..240 run scoreboard players add @s dc_bloodLevel 5
#advancement revoke @s only dc_vampire:vampire_bat_drain