scoreboard players reset #OwnerIsOnline dc_value
execute on owner run function dc_spyglass_study:helper/internal/print_owner
execute unless score #OwnerIsOnline dc_value matches 1 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Owner","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Unknown (Not Online)","color":"white"}]