execute store result score <inbox_length> variable run data get storage pandamium.db:players selected.entry.data.mail.inbox
scoreboard players set <total_unread_mails> variable 0

data modify storage pandamium:temp arguments set value {}

data modify storage pandamium:temp arguments.user_id set from storage pandamium.db:players selected.entry.id

execute store result storage pandamium:temp arguments.index int 1 run scoreboard players set <inbox_index> variable 0
function pandamium:impl/database/players/on_join/check_unread_mail/loop with storage pandamium:temp arguments

execute if score <total_unread_mails> variable matches 1.. run tellraw @s [{"text":"[Mail]","color":"blue"},[{"text":" You have ","color":"green"},{"score":{"name":"<total_unread_mails>","objective":"variable"},"color":"aqua"}," unread mail(s)!"]]
