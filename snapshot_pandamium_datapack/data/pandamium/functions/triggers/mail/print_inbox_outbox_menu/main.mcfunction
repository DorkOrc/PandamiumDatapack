# arguments: type

$data modify storage pandamium:temp type set value "$(type)"
execute store success score <is_inbox> variable unless data storage pandamium:temp {type:"outbox"}

tellraw @s {"storage":"pandamium:temp","nbt":"menu_header","interpret":true}

execute if score <is_inbox> variable matches 1 run tellraw @s {"text":"Inbox:","color":"aqua","bold":true}
execute if score <is_inbox> variable matches 0 run tellraw @s {"text":"Outbox:","color":"aqua","bold":true}

function pandamium:utils/database/players/load/self
execute if score <is_inbox> variable matches 1 run data modify storage pandamium:temp mail_ids set from storage pandamium.db:players selected.entry.data.mail.inbox
execute if score <is_inbox> variable matches 0 run data modify storage pandamium:temp mail_ids set from storage pandamium.db:players selected.entry.data.mail.outbox
execute store result storage pandamium:templates macro.id.id int 1 run scoreboard players get @s id

execute if score <is_inbox> variable matches 1 unless data storage pandamium:temp mail_ids[0] run tellraw @s {"text":" Inbox is Empty ","color":"gray"}
execute if score <is_inbox> variable matches 0 unless data storage pandamium:temp mail_ids[0] run tellraw @s {"text":" Outbox is Empty ","color":"gray"}
execute if data storage pandamium:temp mail_ids[0] run function pandamium:triggers/mail/print_inbox_outbox_menu/loop with storage pandamium:templates macro.id

tellraw @s ["\n",{"text":"Pages: ","color":"yellow","bold":true},{"storage":"pandamium:dictionary","nbt":"triggers.mail.main_menu_button","interpret":true}]
tellraw @s {"text":"======================","color":"aqua"}
