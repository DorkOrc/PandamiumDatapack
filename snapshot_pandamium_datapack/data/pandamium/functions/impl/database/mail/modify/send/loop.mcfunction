# arguments: mail_id

function pandamium:utils/database/players/load/from_id with storage pandamium:temp entries[-1]
execute unless data storage pandamium.db:players selected run tellraw @a[scores={send_extra_debug_info=2..}] {"text":"[Server: Attempted to add mail to invalid player's inbox. Failed to send mail.]","color":"gray","italic":true} 
$execute if data storage pandamium.db:players selected unless data storage pandamium.db:players selected.entry.data.mail.inbox[{mail_id:$(mail_id)}] run function pandamium:impl/database/mail/modify/send/append_and_save

data remove storage pandamium:temp entries[-1]
execute if data storage pandamium:temp entries[0] run function pandamium:impl/database/mail/modify/send/loop with storage pandamium:templates macro.mail_id
