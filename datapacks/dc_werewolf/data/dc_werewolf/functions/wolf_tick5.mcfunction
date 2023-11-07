# Sprinting Logic
execute store result score #IsSprinting dc_value if predicate drakoncore:is_sprinting
execute if score #IsSprinting dc_value matches 1 run scoreboard players add @s dc_werewolfSitSprint 1
execute unless score #IsSprinting dc_value matches 1 run scoreboard players reset @s dc_werewolfSitSprint
execute if score @s dc_werewolfSitSprint matches 15..29 run effect give @s speed 1 0 true
execute if score @s dc_werewolfSitSprint matches 30.. run effect give @s speed 1 1 true

# Detect wolf model or summon if needed
scoreboard players operation #CurrentId dc_playerId = @s dc_playerId
execute store success score #ShouldUseAngryModel dc_value if score @s dc_werewolfRage matches 48..
execute as @e[type=wolf,tag=dc_werewolfModel,distance=..10] if score @s dc_playerId = #CurrentId dc_playerId run function dc_werewolf:model/validate_model
execute unless entity @e[type=wolf,tag=dc_targetWerewolfModel,limit=1,distance=..10] run function dc_werewolf:model/summon_wolf_model
execute if entity @e[type=wolf,tag=dc_targetWerewolfModel,limit=1,distance=..10,tag=dc_werewolfSit] run tag @s add dc_werewolfSit

# Add default attribute modifiers
function dc_werewolf:buffs/apply_default_buffs

# Add stage 2 attribute modifiers
# Reach stage 2 at 24 * 5 = 120 seconds of duration, or 4 medium mob kills
execute if score @s dc_werewolfRage matches 24.. unless entity @s[tag=dc_werewolfBuff2] run function dc_werewolf:buffs/apply_stage_2_buffs
execute unless score @s dc_werewolfRage matches 24.. if entity @s[tag=dc_werewolfBuff2] run function dc_werewolf:buffs/clear_stage_2_buffs

# Add stage 3 attribute modifiers
# Reach stage 3 at 48 * 5 = 240 seconds of duration, or 8 medium mob kills
execute if score @s dc_werewolfRage matches 48.. unless entity @s[tag=dc_werewolfBuff3] run function dc_werewolf:buffs/apply_stage_3_buffs
execute unless score @s dc_werewolfRage matches 48.. if entity @s[tag=dc_werewolfBuff3] run function dc_werewolf:buffs/clear_stage_3_buffs

# Show meter unless at 0 rage and sitting
execute if score @s dc_werewolfRage matches 1.. run function dc_werewolf:meter/display_meter
execute unless score @s dc_werewolfRage matches 1.. unless entity @s[tag=dc_werewolfSit] run function dc_werewolf:meter/display_meter

# Prevent being the controller of any vehicle
tag @s add dc_vehicleAnchor
execute on vehicle on controller if entity @s[tag=dc_vehicleAnchor] run ride @s dismount
execute on vehicle if entity @s[type=!#dc_werewolf:can_ride] run ride @a[tag=dc_vehicleAnchor,limit=1] dismount
tag @s remove dc_vehicleAnchor

# Auto-attack
execute if score @s dc_werewolfRage matches 48.. run function dc_werewolf:enraged_tick5

# Check conditions to leave werewolf form
execute if score @s dc_health matches ..0 run tag @s add dc_werewolfCancel
execute if predicate dc_werewolf:wearing_equipment run function dc_werewolf:handle_equipment
execute if predicate dc_werewolf:has_weakness run tag @s add dc_werewolfCancel
execute if entity @s[tag=dc_werewolfCancel] run function dc_werewolf:untransform_wolf

execute store result score #LookUp dc_value run data get entity @s Rotation[1]
execute if score @s dc_werewolfActionCooldown matches ..-1 run scoreboard players add @s dc_werewolfActionCooldown 1
execute if score #LookUp dc_value matches ..-60 unless score @s dc_werewolfActionCooldown matches ..-1 if predicate drakoncore:is_sneaking if entity @s[tag=dc_werewolfSit] run function dc_werewolf:howl/increment_howl_progress
execute unless entity @s[tag=dc_werewolfHowlCharging] if score @s dc_werewolfActionCooldown matches 1.. run function dc_werewolf:howl/reset_howl_progress
tag @s remove dc_werewolfHowlCharging

# Cleanup
tag @e[type=wolf] remove dc_targetWerewolfModel