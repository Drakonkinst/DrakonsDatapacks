team add dc_werewolf "Werewolf"
team modify dc_werewolf collisionRule never
team modify dc_werewolf friendlyFire false
team modify dc_werewolf seeFriendlyInvisibles false

scoreboard objectives add dc_werewolfSprint dummy "Duration Sprinted As Wolf"
scoreboard objectives add dc_werewolfRage dummy "Werewolf Rage Buildup"
scoreboard objectives add dc_werewolfBones dummy "Werewolf Stored Bones"
scoreboard objectives add dc_werewolfChange dummy "Werewolf Transformation Progress"