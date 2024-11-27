data modify entity @s data merge value {custom_entity_type: "seat", enforce_sit_time: 0b}

execute unless score <id> variable matches -1 store result entity @s data.user_id int 1 run scoreboard players get <id> variable

tag @s add pandamium.custom_entity.type.seat
tag @s add pandamium.custom_entity.brain
tag @s add pandamium.ticking

ride @s mount @n[distance=..1,type=interaction,tag=pandamium.custom_entity.data.convert.root]
