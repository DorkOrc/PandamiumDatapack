# rounds Health to 2d.p., as [/data] always returns an integer
execute store result storage pandamium:temp Health float 0.01 run data get entity @s Health 100

execute store result score <max_health> variable run attribute @s generic.max_health get

title @p[tag=player] actionbar ["",{"selector":"@s"}," ",{"nbt":"Health","storage":"pandamium:temp","color":"yellow"},"/",{"score":{"name":"<max_health>","objective":"variable"},"color":"yellow"}]
