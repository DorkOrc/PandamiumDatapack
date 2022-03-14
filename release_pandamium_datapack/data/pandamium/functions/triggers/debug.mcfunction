tellraw @s ["",{"text":"<nextId>","color":"aqua"}," ",{"text":"id","color":"yellow"}," = ",{"score":{"name":"<nextId>","objective":"id"}}]
tellraw @s ["",{"text":"<next_id>","color":"aqua"}," ",{"text":"global","color":"yellow"}," = ",{"score":{"name":"<next_id>","objective":"global"}}]

scoreboard players reset @s debug
scoreboard players enable @s[name=DorkOrc] debug
