# Apply fire if the sword has Fire Aspect
# Should be done instead of dealing damage in case entity dies
scoreboard players set #FireDuration dc_value 0
# Fire should last for 80 ticks * Fire Aspect enchantment level
execute store result score #FireDuration dc_value run data get storage dc_enderknife:sword_data FlyingSword.components."minecraft:enchantments".levels."minecraft:fire_aspect" 80
execute if score #FireDuration dc_value matches 1.. run execute store result entity @s Fire short 1 run scoreboard players get #FireDuration dc_value

# If Enderman, dodge the attack instead
execute if entity @s[type=enderman] run function dc_enderknife:damage/on_enderman_hit

# If neutral, make angry
execute if data entity @s AngerTime run function dc_enderknife:damage/make_angry

# Integration for Enderman Playable Class
# Teleport instead of getting hit by the attack
execute if entity @s[type=player,gamemode=!spectator,tag=dc_enderman] if predicate drakoncore:under_sky run function dc_enderman:teleport/random

# Deal damage
execute unless entity @s[type=enderman] unless entity @s[type=player,tag=dc_enderman] unless entity @s[type=player,gamemode=spectator] run function dc_enderknife:damage/deal_damage
# detecting mob hit
scoreboard players set #HitMob dc_value 1
# If hit a target, drop the sword
execute unless entity @s[type=enderman] unless entity @s[type=player,tag=dc_enderman] unless entity @s[type=player,gamemode=spectator] as @e[type=item_display,limit=1,tag=dc_swordInFlight] run function dc_enderknife:drop/check_damage

# Damage value required to kill each entity determined via testing
# No longer needed since damage is dealt in the above function
# damage @s[type=#dc_enderknife:damage_1] 1
# damage @s[type=#drakoncore:boats] 5
# damage @s[type=#drakoncore:minecarts] 5

# Particle
execute unless entity @s[type=player,tag=dc_enderman] unless entity @s[type=enderman] run particle minecraft:sweep_attack ~ ~ ~ 0 0 0 0 1 normal

# Immune to other sword throw damage (and
# anything else that uses this scoreboard)
# for 5 ticks
function dc_enderknife:add_dmg_delay
