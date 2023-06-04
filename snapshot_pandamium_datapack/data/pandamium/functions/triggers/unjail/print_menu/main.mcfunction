execute store success score <jailed_players_exist> variable if entity @a[scores={jailed=1..},limit=1]
execute if score <jailed_players_exist> variable matches 0 run tellraw @s [{"text":"[Unjail]","color":"dark_red"},{"text":" There are no jailed players online!","color":"red"}]
execute if score <jailed_players_exist> variable matches 0 run return 0

tellraw @s [{"text":"======== ","color":"yellow"},{"text":"Jailed Players","bold":true}," ========",{"text":"\nPlayer List:","bold":true}]

scoreboard players add @a[scores={jailed=1..}] cheater 0
function pandamium:triggers/unjail/print_menu/list
scoreboard players reset @a[scores={cheater=0}] cheater

tellraw @s {"text":"================================", "color":"yellow"}

