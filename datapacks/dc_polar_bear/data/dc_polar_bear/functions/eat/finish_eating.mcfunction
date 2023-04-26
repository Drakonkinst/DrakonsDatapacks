# Add 4 seconds of healing
# At current values, this equates to 13.33 health which is 17% of the Polar Bear's health
# It would need 6 fish to be considered "full"
scoreboard players add @s dc_polarBearFood 4

execute unless score @s dc_polarBearFood matches ..24 run scoreboard players set @s dc_polarBearFood 24

# Once it has stored food, make it persistent
data modify entity @s PersistenceRequired set value 1b

scoreboard players reset @s dc_polarBearEat