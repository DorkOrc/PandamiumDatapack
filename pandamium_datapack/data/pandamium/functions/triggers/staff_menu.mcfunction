tellraw @s [{"text":"\n---------- Staff menu ----------","color":"yellow"}]
execute at @a run tellraw @s [{"text":"Name: ","color":"yellow"},{"selector":"@s"},{"text":" - ID: ","color":"yellow"},{"score":{"name":"@s","objective":"id"},"color":"gold"}]
tellraw @s [{"text":"------------------------------\n","color":"yellow"}]

scoreboard players reset @s staff_menu
scoreboard players enable @s staff_menu