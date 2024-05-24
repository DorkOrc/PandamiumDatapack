tellraw @s [{"text":"======== ","color":"yellow"},{"text":"Jailed Players","bold":true}," ========",{"text":"\nPlayer List:","bold":true}]

scoreboard players add @a[scores={jailed=1..}] cheater 0
function pandamium:triggers/unjail/print_menu/list
scoreboard players reset @a[scores={cheater=0}] cheater

tellraw @s ""
function pandamium:misc/print_own_announce_punishments_option

tellraw @s {"text":"================================", "color":"yellow"}

