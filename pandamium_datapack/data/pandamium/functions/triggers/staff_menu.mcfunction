tellraw @s [{"text":"======== ","color":"yellow"},{"text":"Staff Menu","bold":true}," ========","\n",{"text":"Player List:","bold":true}]

tag @s add running_trigger
execute at @s as @a[sort=furthest] run tellraw @p[tag=running_trigger] [{"text":" ","color":"yellow"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"gold","bold":true}]
tag @s remove running_trigger

tellraw @s ""
tellraw @s [{"text":"","color":"aqua"},{"text":"[toggle_spectator] ","clickEvent":{"action":"run_command","value":"/trigger toggle_spectator"}},{"text":"[staff_world] ","clickEvent":{"action":"run_command","value":"/trigger staff_world"}}]
execute if score @s staff_perms matches 2.. run tellraw @s [{"text":"[item_clear] ","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger item_clear"}},{"text":"[item_clear (30 seconds)] ","clickEvent":{"action":"run_command","value":"/trigger item_clear set -1"}}]

execute if score @s staff_perms matches 1 run tellraw @s [{"text":"","color":"gold","bold":false},{"text":"[jail] ","clickEvent":{"action":"suggest_command","value":"/trigger jail set "}},{"text":"[unjail] ","clickEvent":{"action":"suggest_command","value":"/trigger unjail set "}},{"text":"[kick] ","clickEvent":{"action":"suggest_command","value":"/trigger kick set "}}]
execute if score @s staff_perms matches 2.. run tellraw @s [{"text":"","color":"gold","bold":false},{"text":"[jail] ","clickEvent":{"action":"suggest_command","value":"/trigger jail set "}},{"text":"[unjail] ","clickEvent":{"action":"suggest_command","value":"/trigger unjail set "}},{"text":"[kick] ","clickEvent":{"action":"suggest_command","value":"/trigger kick set "}},{"text":"[ban] ","clickEvent":{"action":"suggest_command","value":"/trigger ban set "}}]
tellraw @s [{"text":"","color":"gold","bold":false},{"text":"[inventory] ","clickEvent":{"action":"suggest_command","value":"/trigger inventory set "}},{"text":"[enderchest] ","clickEvent":{"action":"suggest_command","value":"/trigger enderchest set "}},"\n",{"text":"[homes] ","clickEvent":{"action":"suggest_command","value":"/trigger homes set "}},{"text":"[playtime] ","clickEvent":{"action":"suggest_command","value":"/trigger playtime set "}},{"text":"[spawnpoint]","clickEvent":{"action":"suggest_command","value":"/trigger spawnpoint set "}}]
tellraw @s ""

tellraw @s [{"text":"=============================","color":"yellow"}]

scoreboard players reset @s staff_menu
scoreboard players enable @s staff_menu
