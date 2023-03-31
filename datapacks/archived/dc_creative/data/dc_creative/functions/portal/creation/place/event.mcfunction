tag @s remove dc_in_creation
# Create portal
execute if entity @s[tag=dc_portal_facing_east] run function dc_creative:portal/creation/place/portal_facing_east
execute if entity @s[tag=dc_portal_facing_north] run function dc_creative:portal/creation/place/portal_facing_north
# Animations
particle explosion ~ ~3 ~ 2 2 2 1 10
particle enchant ~ ~3 ~ 2 2 2 0.01 100
playsound block.azalea.place master @a ~ ~ ~ 10 0.4
playsound block.beacon.power_select master @a ~ ~ ~ 10 0.4