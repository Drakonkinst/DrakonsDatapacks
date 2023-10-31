execute if entity @s[tag=dc_werewolfNeedsBones] run function dc_werewolf:check_return_bones

execute if score @s dc_werewolfRage matches 24.. run function dc_werewolf:buffs/apply_untransformed_buffs_2
execute if score @s dc_werewolfRage matches 48.. run function dc_werewolf:buffs/apply_untransformed_buffs_3

# Display rage meter
execute if predicate dc_werewolf:holding_bones unless predicate drakoncore:is_sneaking unless score @s dc_werewolfChange matches ..-1 run function dc_werewolf:meter/display_meter