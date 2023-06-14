execute unless data entity @s Owner run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Wild","color":"gray","italic":true}]
execute if data entity @s Owner run function dc_spyglass_study:helper/print_owner_info

execute store result score #Variant dc_value run data get entity @s Variant
execute if score #Variant dc_value matches 0 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Variant","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Red","color":"#e80101"}]
execute if score #Variant dc_value matches 1 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Variant","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Blue","color":"#0f23dc"}]
execute if score #Variant dc_value matches 2 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Variant","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Green","color":"#8acc00"}]
execute if score #Variant dc_value matches 3 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Variant","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Cyan","color":"#19c7c1"}]
execute if score #Variant dc_value matches 4 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Variant","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Gray","color":"#b6b6b6"}]