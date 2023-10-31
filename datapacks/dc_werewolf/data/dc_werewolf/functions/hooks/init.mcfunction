team add dc_werewolf "Werewolf"
# Due to MC-87984 this actually makes you push everyone EXCEPT your own team
team modify dc_werewolf collisionRule pushOwnTeam
# This doesn't actually seem to work, so making them invulnerable
team modify dc_werewolf friendlyFire false
team modify dc_werewolf seeFriendlyInvisibles false

# Used for:
# - Werewolf players: Duration sprinted in wolf form
# - Werewolf models: Duration sitting still
scoreboard objectives add dc_werewolfSitSprint dummy "Werewolf Duration Sitting or Sprinting"
# Used for:
# - Werewolf players: Howling timer
# - Werewolf models: Cooldown for being fed by other players
scoreboard objectives add dc_werewolfActionCooldown dummy "Werewolf Action Cooldown"

scoreboard objectives add dc_werewolfRage dummy "Werewolf Rage Buildup"
scoreboard objectives add dc_werewolfBones dummy "Werewolf Stored Bones"
scoreboard objectives add dc_werewolfChange dummy "Werewolf Transformation Progress"
