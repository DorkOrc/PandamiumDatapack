tag @s add defused

execute in the_end positioned 0 62 0 if entity @s[distance=..4] run return 0
execute in the_end positioned 0 62 0 if entity @s[distance=..100] if data entity @s {ShowBottom:1b} run return 0

data modify entity @s Invulnerable set value 1b

summon interaction ~ ~ ~ {width:0f,height:0.01f,response:1b,Tags:["entity_remover"],Passengers:[{id:"minecraft:interaction",width:2.02f,height:-2.02f,response:1b,Tags:["entity_remover"]}]}
ride @n[type=interaction,tag=entity_remover,predicate=!pandamium:riding_entity,distance=..0.01] mount @s
