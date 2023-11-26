tellraw @s [{"text":"======== ","color":"aqua"},{"text":"Mail","bold":true}," ========\n",{"text":"Players:","bold":true}]

function pandamium:triggers/mail/print_selection_menu/list

tellraw @s ["\nPages: ",{"text":"[Main Menu]","hoverEvent":{"action":"show_text","contents":"text."},"clickEvent":{"action":"run_command","value":"/trigger mail set 1"}}]
tellraw @s {"text":"==================================","color":"aqua"}
