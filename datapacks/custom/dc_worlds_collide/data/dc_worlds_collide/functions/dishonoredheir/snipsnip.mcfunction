effect give @s minecraft:slowness 120 2 true
effect give @s minecraft:nausea 30 0 true
playsound minecraft:entity.sheep.shear player @a ~ ~ ~ 2 1
playsound minecraft:entity.player.hurt_sweet_berry_bush player @a ~ ~ ~ 1 1
playsound minecraft:entity.villager.work_cleric player @a ~ ~ ~ 1 1
tellraw @s {"text":"Uh oh, you don't feel so good...","color":"dark_green","italic":true}
clear @s egg
summon item ~ ~ ~ {PickupDelay:40,Motion:[0.15,0.15,0.15],Item:{id:"minecraft:heart_of_the_sea",count:1,tag:{display:{Name:'{"text":"Balls","color":"green","italic":false}',Lore:['{"text":"A strange, spherical object","color":"light_purple","italic":false}','{"text":"collected from some poor","color":"light_purple","italic":false}','{"text":"creature.","color":"light_purple","italic":false}','{"text":" "}','{"text":"Lore Item","color":"dark_purple","italic":false}']},Balls:1b}}}
summon item ~ ~ ~ {PickupDelay:40,Motion:[-0.15,0.15,-0.15],Item:{id:"minecraft:heart_of_the_sea",count:1,tag:{display:{Name:'{"text":"Balls","color":"green","italic":false}',Lore:['{"text":"A strange, spherical object","color":"light_purple","italic":false}','{"text":"collected from some poor","color":"light_purple","italic":false}','{"text":"creature.","color":"light_purple","italic":false}','{"text":" "}','{"text":"Lore Item","color":"dark_purple","italic":false}']},Balls:1b}}}