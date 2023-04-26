# run AT @s

scoreboard players set <has_run> variable 0
execute if block ~ ~ ~ #portals store success score <has_run> variable run function pandamium:impl/portal/at_portal
execute if score <has_run> variable matches 0 positioned ~ ~1 ~ if block ~ ~ ~ #portals store success score <has_run> variable run function pandamium:impl/portal/at_portal
execute if score <has_run> variable matches 0 positioned ~ ~1.6 ~ if block ~ ~ ~ #portals store success score <has_run> variable run function pandamium:impl/portal/at_portal

execute if score <has_run> variable matches 0 if score @s portal_ticks matches 5..80 run title @s actionbar {"text":"Cancelled Teleport!","color":"red"}
execute if score <has_run> variable matches 0 run scoreboard players reset @s portal_ticks
