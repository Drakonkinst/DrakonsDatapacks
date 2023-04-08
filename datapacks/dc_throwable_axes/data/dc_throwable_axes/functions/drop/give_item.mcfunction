# Just teleports item to them
# There's an issue of pickup priority here, where a player w/pickup priority
# next to the player recalling the axe will actually pick up the axe in
# this scenario.
# Should see if we can figure out how to do this with something more secure,
# like the /loot command
tp @s @a[tag=dc_currentAxeThrower,limit=1]