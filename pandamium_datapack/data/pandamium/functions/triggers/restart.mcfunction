execute if score @s restart matches 1.. run tellraw @s [{"text":"","color":"red"},{"text":"[Restart]","color":"dark_red"}," Are you sure you want to ",{"text":"restart the server","underlined":true},"? ",{"text":"[✔]","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","value":{"text":"Restart the Server","color":"dark_green"}},"clickEvent":{"action":"run_command","value":"/trigger restart set -1"}}]
execute if score @s restart matches ..-1 run kick @a The server is being restarted! It will be back in 1-2 minutes.
execute if score @s restart matches ..-1 run stop

scoreboard players reset @s restart
scoreboard players enable @s restart
