scoreboard players operation #CurrentId dc_playerId = @s dc_playerId
execute if score @s dc_werewolfRage matches 48.. summon wolf run function dc_werewolf:model/setup_angry_model
execute if score @s dc_werewolfRage matches 48.. run function dc_werewolf:enraged_summon_effects
execute unless score @s dc_werewolfRage matches 48.. summon wolf run function dc_werewolf:model/setup_normal_model