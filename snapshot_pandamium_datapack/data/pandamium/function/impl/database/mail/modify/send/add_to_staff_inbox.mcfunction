data modify storage pandamium.db.mail:data staff_inbox append value {}
data modify storage pandamium.db.mail:data staff_inbox[-1].mail_id set from storage pandamium.db.mail:io selected.entry.mail_id
scoreboard players add <sent_amount> variable 1
data modify storage pandamium:temp receivers_display_names set value ['"The Staff Team"']

tellraw @a[scores={staff_perms=1..}] [{"text":"[Mail]","color":"blue"},[{"text":" ","color":"green"},[{"text":"","color":"aqua"},{"storage":"pandamium:temp","nbt":"sender_display_name","interpret":true}]," sent ",{"text":"The Staff Team","color":"yellow"}," mail! ",{"text":"[View The Staff Team's Inbox]","color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Click to see ","color":"gold"},{"text":"The Staff Team's Inbox","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger mail set 1000008"}}]]
execute as @a[scores={staff_perms=1..}] at @s run playsound block.note_block.chime master @s
