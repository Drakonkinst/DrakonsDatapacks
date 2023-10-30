# If the werewolf in wolf form tries to hold anything, one of two things occurs:
# In stage 3, immediately spits them back out until they calm down
# In stage 2 or lower, transforms back to human

execute if score @s dc_werewolfRage matches 48.. run function dc_werewolf:drop/force_drop_equipment
execute unless score @s dc_werewolfRage matches 48.. run tag @s add dc_werewolfCancel