# arguments: type

$data modify storage pandamium:temp type set value "$(type)"
execute store success score <is_inbox> variable unless data storage pandamium:temp {type:"outbox"}

tellraw @s [{"text":"======== ","color":"aqua"},{"text":"Mail","bold":true}," ========"]

execute if score <is_inbox> variable matches 1 run tellraw @s "Incoming Mail:"
execute if score <is_inbox> variable matches 0 run tellraw @s "Sent Mail:"

function pandamium:utils/database/players/load/self
execute if score <is_inbox> variable matches 1 run data modify storage pandamium:temp mail_ids set from storage pandamium.db:players selected.entry.data.mail.inbox
execute if score <is_inbox> variable matches 0 run data modify storage pandamium:temp mail_ids set from storage pandamium.db:players selected.entry.data.mail.outbox
execute store result storage pandamium:templates macro.id.id int 1 run scoreboard players get @s id

execute unless data storage pandamium:temp mail_ids[0] run tellraw @s {"text":" Inbox/Outbox is Empty ","color":"gray"}
execute if data storage pandamium:temp mail_ids[0] run function pandamium:triggers/mail/print_inbox_outbox_menu/loop with storage pandamium:templates macro.id

tellraw @s {"text":"==================================","color":"aqua"}
