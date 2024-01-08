scoreboard players add @s unread_mails 1

tellraw @s [{"text":"[Mail]","color":"blue"},[{"text":" ","color":"green"},[{"text":"","color":"aqua"},{"storage":"pandamium:temp","nbt":"sender_display_name","interpret":true}]," sent you mail! ",{"text":"[View your Inbox]","color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Click to see ","color":"gold"},{"text":"Your Inbox","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger mail set 1000001"}}]]
execute at @s run playsound block.note_block.chime master @s
