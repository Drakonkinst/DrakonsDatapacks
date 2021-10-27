# Grant invulnerability to being hit by axe in a short time
scoreboard players set @s dc_damageDelay 5

# send player death message if player is going to die:
execute if entity @s[type=player,tag=!dc_enderman_player,scores={dc_health=1..6},nbt={HurtTime:0s}] run function dc_throwable_axes:print_death_message
execute if entity @s[type=player,tag=!dc_enderman_player,scores={dc_health=1..6},nbt={HurtTime:1s}] run function dc_throwable_axes:print_death_message
execute if entity @s[type=player,tag=dc_enderman_player] run function dc_enderman:teleport_random

# damage live mobs:
effect give @s[tag=!dc_enderman_player,type=!#drakoncore:undead] instant_damage 1 0 true

# damage undead mobs:
effect give @s[type=#drakoncore:undead] instant_health 1 0 true

# kill other entities:
function dc_throwable_axes:hit_others