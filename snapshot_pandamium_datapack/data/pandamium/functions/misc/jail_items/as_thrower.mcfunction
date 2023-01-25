scoreboard players set <player_exists> variable 1
tellraw @a[scores={staff_perms=1..}] [{"text":"[Info] ","color":"dark_gray","clickEvent":{"action":"run_command","value":"/trigger staff_world set 5"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"yellow"},{"text":"Staff World","bold":true,"color":"gold"}]}},{"selector":"@s","color":"gray"},{"text":" threw an item in jail!","color":"gray"}]

tag @s add thrower
execute in pandamium:staff_world run data merge block 0 2 0 {Text1:'[{"text":"Dropped by ","color":"gray","italic":false},{"selector":"@a[tag=thrower,limit=1]","color":"gray"}]'}
tag @s remove thrower
