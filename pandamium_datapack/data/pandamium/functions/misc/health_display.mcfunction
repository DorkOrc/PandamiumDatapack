scoreboard players add @s health_display 0
execute store result score <max_health> variable run attribute @e[sort=nearest,limit=1,nbt={HurtTime:10s}] minecraft:generic.max_health get
execute store result score <health> variable run data get entity @e[sort=nearest,limit=1,nbt={HurtTime:10s}] Health
execute if score @s health_display matches 0 run title @s actionbar [{"text":""},{"selector":"@e[sort=nearest,limit=1,nbt={HurtTime:10s}]"},{"text":" "},{"score":{"name":"<max_health>","objective":"variable"},"color":"yellow"},{"text":"/"},{"score":{"name":"<health>","objective":"variable"},"color":"yellow"}]
advancement revoke @s only pandamium:health_display
