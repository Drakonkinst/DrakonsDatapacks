execute unless entity @e[type=armor_stand,tag=dc_utility] run summon armor_stand 0.5 -128 0.5 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,ShowArms:1b,CustomName:"\"Utility\"",Tags:["dc_utility"]}
scoreboard players set #ShouldQueryUtility dc_value 0