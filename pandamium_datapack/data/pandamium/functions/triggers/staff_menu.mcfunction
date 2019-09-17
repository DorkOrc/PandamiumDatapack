tellraw @s [{"text":"\n---------- Staff menu ----------","color":"yellow"}]
execute at @a run tellraw @s [{"text":"Name: ","color":"yellow"},{"selector":"@p"},{"text":" - ID: ","color":"yellow"},{"score":{"name":"@p","objective":"id"},"color":"gold"}]
tellraw @s [{"text":"------------------------------\n","color":"yellow"}]

scoreboard players reset @s staff_menu
scoreboard players enable @s staff_menu