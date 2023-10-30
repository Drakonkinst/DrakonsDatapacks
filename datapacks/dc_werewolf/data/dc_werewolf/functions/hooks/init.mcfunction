team add dc_werewolf "Werewolf"
# Due to MC-87984 this actually makes you push everyone EXCEPT your own team
team modify dc_werewolf collisionRule pushOwnTeam
# This doesn't actually seem to work, so making them invulnerable
team modify dc_werewolf friendlyFire false
team modify dc_werewolf seeFriendlyInvisibles false

scoreboard objectives add dc_werewolfSprint dummy "Duration Sprinted As Wolf"
scoreboard objectives add dc_werewolfRage dummy "Werewolf Rage Buildup"
scoreboard objectives add dc_werewolfBones dummy "Werewolf Stored Bones"
scoreboard objectives add dc_werewolfChange dummy "Werewolf Transformation Progress"

# Note: This scoreboard is only used by the model, not the werewolf. So we can
# reuse another scoreboard if we're trying to minimize the scoreboard count.
scoreboard objectives add dc_werewolfSit dummy "Werewolf Sitting Still Progress"