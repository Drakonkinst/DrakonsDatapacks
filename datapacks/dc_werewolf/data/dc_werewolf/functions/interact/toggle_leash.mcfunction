execute store result score #AlreadyHasLeash dc_value if data entity @s Leash
execute if score #AlreadyHasLeash dc_value matches 1 run data modify entity @s Leash.UUID set from entity @e[type=minecraft:armor_stand,x=-1,y=-129,z=-1,dx=1,dy=1,dz=1,tag=dc_utility,limit=1] UUID
execute unless score #AlreadyHasLeash dc_value matches 1 run scoreboard players set #LeashUsed dc_value 1
execute unless score #AlreadyHasLeash dc_value matches 1 run data modify entity @s Leash.UUID set from entity @a[tag=dc_wolfLeasher,limit=1] UUID