data merge entity @s {NoAI:1b,Tags:["dc_batfly"],PersistenceRequired:1b}
scoreboard players operation @s dc_playerId = @a[tag=dc_batflyAnchor,limit=1] dc_playerId
ride @a[tag=dc_batflyAnchor,limit=1] mount @s