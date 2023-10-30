# Sprinting Logic
execute store result score #IsSprinting dc_value if predicate drakoncore:is_sprinting
execute if score #IsSprinting dc_value matches 1 run scoreboard players add @s dc_werewolfSprint 1
execute unless score #IsSprinting dc_value matches 1 run scoreboard players reset @s dc_werewolfSprint
execute if score @s dc_werewolfSprint matches 15..29 run effect give @s speed 1 0 true
execute if score @s dc_werewolfSprint matches 30.. run effect give @s speed 1 1 true

# Detect wolf model or summon if needed
scoreboard players operation #CurrentId dc_playerId = @s dc_playerId
execute as @e[type=wolf,tag=dc_werewolfModel,distance=..10] if score @s dc_playerId = #CurrentId dc_playerId run tag @s add dc_targetWerewolfModel
execute unless entity @e[type=wolf,tag=dc_targetWerewolfModel,limit=1,distance=..10] run function dc_werewolf:summon_wolf

# Add attribute modifiers
attribute @s minecraft:generic.attack_damage modifier add c7aa4d57-6ff7-478b-beb2-927732c9bc9e "Werewolf Strength" 5 add
attribute @s minecraft:generic.armor modifier add 0c0905e9-bbe5-4756-8d1c-3899517a5d69 "Werewolf Armor 1" 12 add
effect give @s invisibility infinite 0 true
tag @s add dc_werewolfBuff

# Check conditions to leave werewolf form
execute if data entity @s SelectedItem run tag @s add dc_werewolfCancel
execute if score @s dc_health matches ..0 run tag @s add dc_werewolfCancel
execute if entity @s[tag=dc_werewolfCancel] run function dc_werewolf:untransform_wolf

# Cleanup
tag @e[type=wolf] remove dc_targetWerewolfModel