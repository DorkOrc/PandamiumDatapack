function pandamium:utils/database/mail/load/from_mail_id with storage pandamium.db.mail:data news_feed_inbox[-1]
execute store result score <last_news_hour_id> variable run data get storage pandamium.db.mail:io selected.entry.hour_id

data modify storage pandamium:temp date set value [0,0,0,0]
execute store result storage pandamium:temp date[0] int 1 run scoreboard players get @s last_joined.year
execute store result storage pandamium:temp date[1] int 1 run scoreboard players get @s last_joined.month
execute store result storage pandamium:temp date[2] int 1 run scoreboard players get @s last_joined.day
execute store result storage pandamium:temp date[3] int 1 run scoreboard players get @s last_joined.hour
function pandamium:utils/get/hour_id/from_date_list
scoreboard players operation <last_joined_hour_id> variable = <hour_id> variable

execute if score <last_joined_hour_id> variable > <last_news_hour_id> variable run return 0

data modify storage pandamium:queue entries append value {action:announcement,targets:532}
execute store result storage pandamium:queue entries[-1].targets int 1 run scoreboard players get @s id

