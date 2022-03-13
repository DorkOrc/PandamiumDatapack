scoreboard players add @s portal_ticks 5

execute if score @s portal_ticks matches 5..80 run title @s actionbar [{"text":"Entering Portal... ","color":"gray"},{"score":{"name":"@s","objective":"portal_ticks"},"color":"aqua"},"/85"]
execute if score @s portal_ticks matches 85 run title @s actionbar {"text":"Entered Portal!","color":"gray"}

execute if score @s portal_ticks matches 85 run function pandamium:misc/portal/enter/main
