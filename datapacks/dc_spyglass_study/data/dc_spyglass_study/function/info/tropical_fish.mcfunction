execute store result score #Variant dc_value run data get entity @s Variant

execute if score #Variant dc_value matches 65536 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Species","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Clownfish"}]
execute if score #Variant dc_value matches 459008 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Species","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Triggerfish"}]
execute if score #Variant dc_value matches 917504 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Species","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Tomato Clownfish"}]
execute if score #Variant dc_value matches 918273 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Species","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Red Snapper"}]
execute if score #Variant dc_value matches 918529 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Species","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Red Cichlid"}]
execute if score #Variant dc_value matches 16778497 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Species","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Ornate Butterflyfish"}]
execute if score #Variant dc_value matches 50660352 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Species","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Queen Angelfish"}]
execute if score #Variant dc_value matches 50726144 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Species","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Cotton Candy Betta"}]
execute if score #Variant dc_value matches 67108865 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Species","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Threadfin"}]
execute if score #Variant dc_value matches 67110144 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Species","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Goatfish"}]
execute if score #Variant dc_value matches 67371009 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Species","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Yellow Tang"}]
execute if score #Variant dc_value matches 67699456 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Species","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Yellowtail Parrotfish"}]
execute if score #Variant dc_value matches 67764993 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Species","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Dottyback"}]
execute if score #Variant dc_value matches 101253888 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Species","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Parrotfish"}]
execute if score #Variant dc_value matches 117441025 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Species","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Moorish Idol"}]
execute if score #Variant dc_value matches 117441793 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Species","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Butterflyfish"}]
execute if score #Variant dc_value matches 117506305 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Species","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Anemone"}]
execute if score #Variant dc_value matches 117899265 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Species","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Black Tang"}]
execute if score #Variant dc_value matches 118161664 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Species","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Cichlid"}]
execute if score #Variant dc_value matches 185008129 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Species","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Blue Tang"}]
execute if score #Variant dc_value matches 234882305 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Species","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Emperor Red Snapper"}]
execute if score #Variant dc_value matches 235340288 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Species","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Red Lipped Blenny"}]

scoreboard players operation #Shape dc_value = #Variant dc_value
scoreboard players operation #Shape dc_value %= #256 dc_value

scoreboard players operation #Pattern dc_value = #Variant dc_value
scoreboard players operation #Pattern dc_value /= #256 dc_value
scoreboard players operation #Pattern dc_value %= #256 dc_value

execute if score #Shape dc_value matches 0 if score #Pattern dc_value matches 0 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Variety","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Kob"}]
execute if score #Shape dc_value matches 0 if score #Pattern dc_value matches 1 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Variety","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Sunstreak"}]
execute if score #Shape dc_value matches 0 if score #Pattern dc_value matches 2 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Variety","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Snooper"}]
execute if score #Shape dc_value matches 0 if score #Pattern dc_value matches 3 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Variety","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Dasher"}]
execute if score #Shape dc_value matches 0 if score #Pattern dc_value matches 4 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Variety","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Brinely"}]
execute if score #Shape dc_value matches 0 if score #Pattern dc_value matches 5 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Variety","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Spotty"}]
execute if score #Shape dc_value matches 1 if score #Pattern dc_value matches 0 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Variety","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Flopper"}]
execute if score #Shape dc_value matches 1 if score #Pattern dc_value matches 1 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Variety","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Stripey"}]
execute if score #Shape dc_value matches 1 if score #Pattern dc_value matches 2 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Variety","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Glitter"}]
execute if score #Shape dc_value matches 1 if score #Pattern dc_value matches 3 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Variety","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Blockfish"}]
execute if score #Shape dc_value matches 1 if score #Pattern dc_value matches 4 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Variety","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Betty"}]
execute if score #Shape dc_value matches 1 if score #Pattern dc_value matches 5 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Variety","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Clayfish"}]

scoreboard players operation #BaseColor dc_value = #Variant dc_value
scoreboard players operation #BaseColor dc_value /= #65536 dc_value
scoreboard players operation #BaseColor dc_value %= #256 dc_value

execute if score #BaseColor dc_value matches 0 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Base Color","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"White"}]
execute if score #BaseColor dc_value matches 1 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Base Color","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Orange"}]
execute if score #BaseColor dc_value matches 2 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Base Color","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Magenta"}]
execute if score #BaseColor dc_value matches 3 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Base Color","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Light Blue"}]
execute if score #BaseColor dc_value matches 4 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Base Color","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Yellow"}]
execute if score #BaseColor dc_value matches 5 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Base Color","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Lime"}]
execute if score #BaseColor dc_value matches 6 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Base Color","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Pink"}]
execute if score #BaseColor dc_value matches 7 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Base Color","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Gray"}]
execute if score #BaseColor dc_value matches 8 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Base Color","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Purple"}]
execute if score #BaseColor dc_value matches 9 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Base Color","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Cyan"}]
execute if score #BaseColor dc_value matches 10 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Base Color","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Light Gray"}]
execute if score #BaseColor dc_value matches 11 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Base Color","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Blue"}]
execute if score #BaseColor dc_value matches 12 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Base Color","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Brown"}]
execute if score #BaseColor dc_value matches 13 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Base Color","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Green"}]
execute if score #BaseColor dc_value matches 14 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Base Color","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Red"}]
execute if score #BaseColor dc_value matches 15 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Base Color","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Black"}]

scoreboard players operation #PatternColor dc_value = #Variant dc_value
scoreboard players operation #PatternColor dc_value /= #16777216 dc_value
scoreboard players operation #PatternColor dc_value %= #256 dc_value

execute if score #PatternColor dc_value matches 0 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Pattern Color","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"White"}]
execute if score #PatternColor dc_value matches 1 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Pattern Color","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Orange"}]
execute if score #PatternColor dc_value matches 2 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Pattern Color","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Magenta"}]
execute if score #PatternColor dc_value matches 3 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Pattern Color","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Light Blue"}]
execute if score #PatternColor dc_value matches 4 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Pattern Color","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Yellow"}]
execute if score #PatternColor dc_value matches 5 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Pattern Color","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Lime"}]
execute if score #PatternColor dc_value matches 6 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Pattern Color","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Pink"}]
execute if score #PatternColor dc_value matches 7 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Pattern Color","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Gray"}]
execute if score #PatternColor dc_value matches 8 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Pattern Color","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Purple"}]
execute if score #PatternColor dc_value matches 9 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Pattern Color","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Cyan"}]
execute if score #PatternColor dc_value matches 10 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Pattern Color","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Light Gray"}]
execute if score #PatternColor dc_value matches 11 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Pattern Color","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Blue"}]
execute if score #PatternColor dc_value matches 12 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Pattern Color","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Brown"}]
execute if score #PatternColor dc_value matches 13 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Pattern Color","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Green"}]
execute if score #PatternColor dc_value matches 14 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Pattern Color","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Red"}]
execute if score #PatternColor dc_value matches 15 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Pattern Color","color":"gray"},{"text":": ","color":"dark_gray"},{"text":"Black"}]

# tellraw @a[tag=dc_spyglassAnchor,limit=1] {"score":{"name":"#Variant","objective":"dc_value"}}
# tellraw @a[tag=dc_spyglassAnchor,limit=1] {"score":{"name":"#Shape","objective":"dc_value"}}
# tellraw @a[tag=dc_spyglassAnchor,limit=1] {"score":{"name":"#Pattern","objective":"dc_value"}}
# tellraw @a[tag=dc_spyglassAnchor,limit=1] {"score":{"name":"#BaseColor","objective":"dc_value"}}
# tellraw @a[tag=dc_spyglassAnchor,limit=1] {"score":{"name":"#PatternColor","objective":"dc_value"}}