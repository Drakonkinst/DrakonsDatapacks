playsound minecraft:entity.turtle.egg_break block @a ~ ~ ~ 1 1
summon firework_rocket ~ ~ ~ {Life:0,LifeTime:0,ShotAtAngle:0b,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Colors:[I;13408713,10404303,10412190,16645527,16691524,16737891]}]}}}}
execute store result score @s dc_value run data get entity @s Item.Count 5
function dc_wishing_well:summon_drops
kill @s