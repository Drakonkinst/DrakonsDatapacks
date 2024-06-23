scoreboard players set @s dc_werewolfActionCooldown -12
playsound minecraft:entity.wolf.howl player @a ~ ~ ~ 32 1
particle minecraft:shriek{delay:0} ~ ~ ~ 0 0 0 0 3
particle minecraft:shriek{delay:3} ~ ~ ~ 0 0 0 0 3
particle minecraft:shriek{delay:6} ~ ~ ~ 0 0 0 0 3
execute if score @s dc_werewolfRage matches 48.. run function dc_werewolf:howl/do_enraged_effects

execute unless predicate dc_werewolf:is_day if predicate drakoncore:under_sky run function dc_werewolf:howl/do_tracking
function dc_werewolf:howl/remove_attributes