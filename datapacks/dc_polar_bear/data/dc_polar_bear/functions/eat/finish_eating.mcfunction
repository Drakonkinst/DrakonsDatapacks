# Add 8 seconds of healing
# At current values, this equates to 13.33 health which is 17% of the Polar Bear's health
scoreboard players add @s dc_polarBearFood 8

# It would need 6 fish to be considered "full", so it has 200% potential health at max food (8 * 6 = 48)
execute unless score @s dc_polarBearFood matches ..48 run scoreboard players set @s dc_polarBearFood 48

# Once it has stored food, make it persistent
data modify entity @s PersistenceRequired set value 1b

scoreboard players reset @s dc_polarBearEat