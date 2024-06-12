# Can modify dc_rocketSelect or perform other actions
function #dc_rocket_travel:on_select

# Find matching info
tag @s add dc_rocketAnchor
execute as @e[type=marker,tag=dc_rocketLocation] if score @s dc_rocketId = @a[tag=dc_rocketAnchor,limit=1] dc_rocketSelect run tag @s add dc_rocketTarget
tag @s remove dc_rocketAnchor

execute unless entity @e[type=marker,tag=dc_rocketLocation,tag=dc_rocketTarget,limit=1] run tellraw @s {"text":"That location is invalid!","color":"red"}
execute if entity @e[type=marker,tag=dc_rocketLocation,tag=dc_rocketTarget,limit=1] run function dc_rocket_travel:terminal/on_success

scoreboard players reset @s dc_rocketSelect