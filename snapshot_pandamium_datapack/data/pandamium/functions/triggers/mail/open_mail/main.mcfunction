# load mail
scoreboard players operation <mail_id> variable = @s mail
scoreboard players operation <mail_id> variable *= #-1 constant
execute store result storage pandamium:templates macro.mail_id.mail_id int 1 run scoreboard players remove <mail_id> variable 2000000
function pandamium:utils/database/mail/load/from_mail_id with storage pandamium:templates macro.mail_id

# check access
execute store result storage pandamium:templates macro.id.id int 1 run scoreboard players get @s id
function pandamium:triggers/mail/open_mail/has_access_to_mail_entry with storage pandamium:templates macro.id
execute if score <has_access> variable matches 0 run return run tellraw @s [{"text":"[Mail]","color":"dark_red"},{"text":" You are not a receiver of that mail entry!","color":"red"}]

execute if score <had_already_read> variable matches 0 store result score <id> variable run data get storage pandamium.db:mail selected.entry.sender.id
execute if score <had_already_read> variable matches 0 run title @a[predicate=pandamium:matches_id,limit=1] actionbar [{"text":"","color":"yellow"},{"selector":"@s","color":"gold"}," opened your mail"]

# print mail
function pandamium:triggers/mail/print_received_mail_menu

# save changes
function pandamium:utils/database/mail/save
