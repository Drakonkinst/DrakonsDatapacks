# Detect attached player
scoreboard players operation #CurrentId dc_playerId = @s dc_playerId
execute as @a[tag=dc_werewolf,tag=dc_werewolfTransformed,distance=..10] if score @s dc_playerId = #CurrentId dc_playerId run tag @s add dc_targetWerewolf
execute unless entity @a[tag=dc_targetWerewolf,limit=1] run tag @s add dc_shouldDelete

execute if entity @a[tag=dc_targetWerewolf,limit=1,scores={dc_health=0}] run function dc_werewolf:model/model_kill
execute if entity @a[tag=dc_targetWerewolf,limit=1,nbt={HurtTime:9s}] run function dc_werewolf:model/model_damage

execute if entity @s[tag=dc_werewolfAngryModel] if data entity @s {AngerTime:0} run data modify entity @s AngerTime set value 2147483647

execute store result score #OnFire dc_value as @a[tag=dc_targetWerewolf,limit=1] if predicate drakoncore:on_fire
execute if score #OnFire dc_value matches 1 run data modify entity @s Fire set value 5s

# Track sitting still
execute store result score #IsSneaking dc_value as @a[tag=dc_targetWerewolf,limit=1] if predicate drakoncore:is_sneaking
execute store result score #SleepTimer dc_value run data get entity @a[tag=dc_targetWerewolf,limit=1] SleepTimer
execute store result score #IsMoving dc_value if entity @a[tag=dc_targetWerewolf,limit=1,distance=0.05..]

# Prevent from entering any vehicle
tag @s add dc_vehicleAnchor
execute on vehicle on passengers if entity @s[tag=dc_vehicleAnchor] run ride @s dismount
tag @s remove dc_vehicleAnchor

# Check vehicle to determine offset
scoreboard players set #VehicleType dc_value 0
execute as @a[tag=dc_targetWerewolf,limit=1] on vehicle run function dc_werewolf:model/get_vehicle_type

# Do not count as moving if sleeping or in vehicle
execute if score #SleepTimer dc_value matches 1.. run scoreboard players set #IsMoving dc_value 0
execute if score #VehicleType dc_value matches 1.. run scoreboard players set #IsMoving dc_value 0

# Increment sitting timer
execute unless score #IsMoving dc_value matches 1 run scoreboard players add @s dc_werewolfSitSprint 1
execute if score #IsMoving dc_value matches 1 unless score @s dc_werewolfSitSprint matches ..-1 run scoreboard players reset @s dc_werewolfSitSprint

# Sit or unsit
execute if entity @s[tag=dc_werewolfSit] run function dc_werewolf:model/check_unsit
execute unless score #IsMoving dc_value matches 1 unless entity @s[tag=dc_werewolfSit] unless predicate drakoncore:not_on_solid_ground run function dc_werewolf:model/check_sit

# Movement

tp @s @a[tag=dc_targetWerewolf,limit=1]

# Offset when sleeping to fix height difference
execute if score #SleepTimer dc_value matches 1.. at @s run tp @s ~ ~-0.05 ~

# Offset in a boat (passenger only)
execute if score #VehicleType dc_value matches 1 at @s run tp @s ~ ~0.7 ~

# Offset in a camel (passenger only)
execute if score #VehicleType dc_value matches 2 at @s run tp @s ~ ~0.55 ~

# Don't let the player breed .-.
# Eating mechanic
execute unless score @s dc_werewolfActionCooldown matches 0.. run scoreboard players set @s dc_werewolfActionCooldown 0
execute if score @s dc_werewolfActionCooldown matches 1.. run scoreboard players remove @s dc_werewolfActionCooldown 1
execute store result score #LoveTicks dc_value run data get entity @s InLove
execute if score #LoveTicks dc_value matches 1.. run function dc_werewolf:interact/eat

# Break all leashes that manage to attach to the wolf if in enraged mode
execute if data entity @s[tag=dc_werewolfAngryModel] Leash run data modify entity @s Leash.UUID set from entity @e[type=minecraft:armor_stand,x=-1,y=-129,z=-1,dx=1,dy=1,dz=1,tag=dc_utility,limit=1] UUID

# Cleanup
execute if entity @s[tag=dc_shouldDelete] run function dc_werewolf:model/model_clear

tag @a remove dc_targetWerewolf