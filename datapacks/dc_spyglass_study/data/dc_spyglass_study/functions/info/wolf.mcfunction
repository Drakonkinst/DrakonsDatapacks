execute unless data entity @s Owner run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Wild","color":"gray","italic":true}]
execute if data entity @s Owner run function dc_spyglass_study:helper/print_owner_info