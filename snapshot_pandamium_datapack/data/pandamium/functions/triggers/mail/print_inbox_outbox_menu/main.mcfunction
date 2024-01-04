# arguments: type

$data modify storage pandamium:temp type set value "$(type)"
scoreboard players reset <mail_list_type> variable
execute if data storage pandamium:temp {type:"inbox"} run scoreboard players set <mail_list_type> variable 0
execute if data storage pandamium:temp {type:"outbox"} run scoreboard players set <mail_list_type> variable 1
execute if data storage pandamium:temp {type:"server_outbox"} run scoreboard players set <mail_list_type> variable 2
execute unless score <mail_list_type> variable matches 0.. run return fail

tellraw @s {"storage":"pandamium:temp","nbt":"menu_header","interpret":true}

execute if score <mail_list_type> variable matches 0 run tellraw @s {"text":"Inbox:","color":"aqua","bold":true}
execute if score <mail_list_type> variable matches 1 run tellraw @s {"text":"Outbox:","color":"aqua","bold":true}
execute if score <mail_list_type> variable matches 2 run tellraw @s {"text":"Server Outbox:","color":"aqua","bold":true}

function pandamium:utils/database/players/load/self
execute if score <mail_list_type> variable matches 0 run data modify storage pandamium:temp mail_ids set from storage pandamium.db:players selected.entry.data.mail.inbox
execute if score <mail_list_type> variable matches 1 run data modify storage pandamium:temp mail_ids set from storage pandamium.db:players selected.entry.data.mail.outbox
execute if score <mail_list_type> variable matches 2 run data modify storage pandamium:temp mail_ids set from storage pandamium.db:mail server_outbox
execute store result storage pandamium:templates macro.id.id int 1 run scoreboard players get @s id

execute if score <mail_list_type> variable matches 0 unless data storage pandamium:temp mail_ids[0] run tellraw @s {"text":" Inbox is Empty ","color":"gray"}
execute if score <mail_list_type> variable matches 1 unless data storage pandamium:temp mail_ids[0] run tellraw @s {"text":" Outbox is Empty ","color":"gray"}
execute if score <mail_list_type> variable matches 2 unless data storage pandamium:temp mail_ids[0] run tellraw @s {"text":" Server Outbox is Empty ","color":"gray"}
execute if data storage pandamium:temp mail_ids[0] run function pandamium:triggers/mail/print_inbox_outbox_menu/loop with storage pandamium:templates macro.id

tellraw @s ["\n",{"text":"Pages: ","color":"yellow","bold":true},{"storage":"pandamium:dictionary","nbt":"triggers.mail.main_menu_button","interpret":true}]
tellraw @s {"text":"======================","color":"aqua"}
