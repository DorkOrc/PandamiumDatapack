tag @s add defused

execute if entity @s[predicate=pandamium:in_dimension/the_end,x=0.5,y=62,z=0.5,distance=..4] run return 0
execute if entity @s[predicate=pandamium:in_dimension/the_end] unless entity @s[tag=!dragon_fight,predicate=!pandamium:riding_entity,nbt=!{ShowBottom:1b}] run return 0

data modify entity @s Invulnerable set value 1b

summon interaction ~ ~ ~ {width:0f,height:0.01f,response:1b,Tags:["entity_remover"],Passengers:[{id:"minecraft:interaction",width:2.02f,height:-2.02f,response:1b,Tags:["entity_remover"]}]}
ride @n[type=interaction,tag=entity_remover,predicate=!pandamium:riding_entity,distance=..0.01] mount @s
