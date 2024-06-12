tellraw @a[tag=dc_attachAnchor,limit=1] {"text":"Passenger Boat selected. Click another Boat to attach.","color":"gray"}
scoreboard players operation @s dc_playerId = @a[tag=dc_attachAnchor,limit=1] dc_playerId
tag @s add dc_selectedBoat
execute at @s run playsound minecraft:entity.leash_knot.place block @a