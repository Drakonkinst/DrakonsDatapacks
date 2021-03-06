# Grant invulnerability to being hit by axe in a short time
scoreboard players set @s dc_damageDelay 5

# send player death message if player is going to die:
execute if entity @s[type=player,gamemode=!creative,gamemode=!spectator,tag=!dc_enderman] if score @s dc_health matches 1..12 if predicate dc_throwable_axes:just_hurt run function dc_throwable_axes:print_death_message
execute if entity @s[type=player,gamemode=!creative,gamemode=!spectator,tag=dc_enderman] if predicate drakoncore:under_sky run function dc_enderman:teleport/random
execute unless entity @s[type=player,tag=dc_enderman] unless entity @s[type=enderman] run particle minecraft:sweep_attack ~ ~ ~ 0 0 0 0 1 normal

execute if entity @s[type=enderman] run function dc_throwable_axes:on_enderman_hit
execute if data entity @s AngerTime run function dc_throwable_axes:make_angry

# damage live mobs:
effect give @s[type=!enderman,tag=!dc_enderman,type=!#drakoncore:undead] instant_damage 1 1 true

# damage undead mobs:
effect give @s[type=#drakoncore:undead] instant_health 1 1 true

# kill other entities:
function dc_throwable_axes:hit_others