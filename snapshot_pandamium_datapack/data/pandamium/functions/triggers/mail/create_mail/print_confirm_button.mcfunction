# arguments: value

$tellraw @s ["\nConfirm Send: ",{"text":"[CONFIRM]","color":"dark_green","hoverEvent":{"action":"show_text","contents":"text."},"clickEvent":{"action":"run_command","value":"/trigger mail set $(value)"}}]
