execute store result score #ActionType dc_value if predicate dc_werewolf:holding_lead
execute if score #ActionType dc_value matches 0 run function dc_werewolf:interact/leash
execute if score #ActionType dc_value matches 1 run function dc_werewolf:interact/feed