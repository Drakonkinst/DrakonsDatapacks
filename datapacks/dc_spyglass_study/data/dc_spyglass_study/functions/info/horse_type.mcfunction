# Whether the horse is tamed or not
# Position near the top so it lines up with other one-word tags
execute if data entity @s {Tame:1b} run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Tamed","color":"gray","italic":true}]
execute unless data entity @s {Tame:1b} run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Wild","color":"gray","italic":true}]

# Horse movement speed ranges from 0.1125 - 0.3375, average of 0.225
# Player walking speed is 0.1
execute store result score #Speed dc_value run data get entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base 10000
execute if score #Speed dc_value matches ..1582 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Speed","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"⭐⭐⭐⭐⭐","color":"dark_gray"}]
execute if score #Speed dc_value matches 1583..1940 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Speed","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"⭐","color":"#fcd53f"},{"text":"⭐⭐⭐⭐","color":"dark_gray"}]
execute if score #Speed dc_value matches 1941..2298 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Speed","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"⭐⭐","color":"#fcd53f"},{"text":"⭐⭐⭐","color":"dark_gray"}]
execute if score #Speed dc_value matches 2299..2656 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Speed","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"⭐⭐⭐","color":"#fcd53f"},{"text":"⭐⭐","color":"dark_gray"}]
execute if score #Speed dc_value matches 2657..3014 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Speed","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"⭐⭐⭐⭐","color":"#fcd53f"},{"text":"⭐⭐","color":"dark_gray"}]
execute if score #Speed dc_value matches 3015.. run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Speed","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"⭐⭐⭐⭐⭐","color":"#fcd53f"}]

# Horse jump strength ranges from 0.4 - 1.0, average of 0.7 (3 blocks).
# Jump strength of 0.5 clears 1 block, 1.0 clears 5 blocks.
# Assuming this is linear, can use math to determine the intervals
# Conveniently, this means 1 star = 1 block it can clear
execute store result score #JumpStrength dc_value run data get entity @s Attributes[{Name:"minecraft:horse.jump_strength"}].Base 10000
execute if score #JumpStrength dc_value matches ..4236 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Jump Strength","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"⭐⭐⭐⭐⭐","color":"dark_gray"}]
execute if score #JumpStrength dc_value matches 4237..5592 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Jump Strength","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"⭐","color":"#fcd53f"},{"text":"⭐⭐⭐⭐","color":"dark_gray"}]
execute if score #JumpStrength dc_value matches 5593..6948 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Jump Strength","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"⭐⭐","color":"#fcd53f"},{"text":"⭐⭐⭐","color":"dark_gray"}]
execute if score #JumpStrength dc_value matches 6949..8304 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Jump Strength","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"⭐⭐⭐","color":"#fcd53f"},{"text":"⭐⭐","color":"dark_gray"}]
execute if score #JumpStrength dc_value matches 8305..9660 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Jump Strength","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"⭐⭐⭐⭐","color":"#fcd53f"},{"text":"⭐⭐","color":"dark_gray"}]
execute if score #JumpStrength dc_value matches 9661.. run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Jump Strength","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"⭐⭐⭐⭐⭐","color":"#fcd53f"}]