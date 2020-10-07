
tellraw @s [{"text":"======== ","color":"yellow"},{"text":"Staff Menu","bold":true}," ========","\n",{"text":"Player List:","bold":true}]
execute at @s as @a[sort=furthest] run tellraw @p[scores={staff_perms=1..,staff_menu=1..}] [{"text":" ","color":"yellow"},{"selector":"@s"}," --- ",{"score":{"name":"@s","objective":"id"},"color":"gold","bold":true}]

tellraw @s ""
execute if score @s staff_perms matches 1 run tellraw @s [{"text":"","color":"gold","bold":false},{"text":"[jail] ","clickEvent":{"action":"suggest_command","value":"/trigger jail set "}},{"text":"[unjail] ","clickEvent":{"action":"suggest_command","value":"/trigger unjail set "}},{"text":"[kick] ","clickEvent":{"action":"suggest_command","value":"/trigger kick set "}}]
execute if score @s staff_perms matches 2.. run tellraw @s [{"text":"","color":"gold","bold":false},{"text":"[jail] ","clickEvent":{"action":"suggest_command","value":"/trigger jail set "}},{"text":"[unjail] ","clickEvent":{"action":"suggest_command","value":"/trigger unjail set "}},{"text":"[kick] ","clickEvent":{"action":"suggest_command","value":"/trigger kick set "}},{"text":"[ban] ","clickEvent":{"action":"suggest_command","value":"/trigger ban set "}}]

tellraw @s [{"text":"","color":"gold","bold":false},{"text":"[inventory] ","clickEvent":{"action":"suggest_command","value":"/trigger inventory set "}},{"text":"[enderchest] ","clickEvent":{"action":"suggest_command","value":"/trigger enderchest set "}},"\n",{"text":"[show_homes] ","clickEvent":{"action":"suggest_command","value":"/trigger show_homes set "}},{"text":"[show_playtime] ","clickEvent":{"action":"suggest_command","value":"/trigger show_playtime set "}},{"text":"[show_spawnpoint]","clickEvent":{"action":"suggest_command","value":"/trigger show_spawnpoint set "}}]
execute if score @s staff_perms matches 2.. run tellraw @s [{"text":"","color":"gold","bold":false},{"text":"[item_clear] ","clickEvent":{"action":"suggest_command","value":"/trigger item_clear"}},{"text":"[spectator_mode] ","clickEvent":{"action":"suggest_command","value":"/trigger spectator_mode"}}]

tellraw @s [{"text":"=============================","color":"yellow"}]

scoreboard players reset @s staff_menu
scoreboard players enable @s staff_menu
