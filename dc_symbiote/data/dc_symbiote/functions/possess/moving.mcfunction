execute facing entity @e[type=!#dc_symbiote:invalid_host,tag=dc_symbioteTarget,limit=1,sort=nearest] feet run tp @s ^ ^ ^0.6
execute unless entity @e[type=!#dc_symbiote:invalid_host,tag=dc_symbioteTarget,limit=1] run function dc_symbiote:possess/exit_moving
execute if entity @e[type=!#dc_symbiote:invalid_host,tag=dc_symbioteTarget,limit=1,sort=nearest,distance=..1] run function dc_symbiote:possess/possess
particle minecraft:block minecraft:end_portal ~ ~1 ~ 0 0 0 0 35
playsound minecraft:entity.slime.squish_small player @a ~ ~ ~ 0.2 1