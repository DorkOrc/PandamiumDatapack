
#tellraw @s [{"text":"======== ","color":"aqua"},{"text":"Vote Shop","bold":true}," ========\n",[{"text":"Vote Credits: ","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Click to ","color":"aqua"},{"text":"Vote","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger vote"}},{"score":{"name":"@s","objective":"vote_credits"},"bold":true,"color":"aqua"}]]

#

#tellraw @s {"text":"============================","color":"aqua"}

#scoreboard players set <has_printed_menu> variable 1
