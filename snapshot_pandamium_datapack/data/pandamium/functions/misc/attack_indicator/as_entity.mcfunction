# rounds Health to 2d.p., as [/data] always returns an integer
execute store result storage pandamium:temp Health float 0.01 run data get entity @s Health 100

execute store result score <max_health> variable run attribute @s generic.max_health get

scoreboard players set <hurt_shielded_entity> variable 0
execute store success score <hurt_shielded_entity> variable if entity @s[type=phantom,team=dragon_fight] if data entity @s Passengers run title @p[tag=player] actionbar [{"selector":"@s"},{"text":" is shielded by its crystal","color":"yellow"}]
execute if score <hurt_shielded_entity> variable matches 0 run title @p[tag=player] actionbar ["",{"selector":"@s"}," ",{"nbt":"Health","storage":"pandamium:temp","color":"yellow"},"/",{"score":{"name":"<max_health>","objective":"variable"},"color":"yellow"}]
