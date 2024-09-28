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

tellraw @s [{"text":"[News]","color":"#00AA7F"},{"text":" ","color":"#65FF8D","extra":[{"text":"","color":"#65FFD8","extra":[{"storage":"pandamium.db.mail:io","nbt":"selected.entry.data.title","interpret":true}]},"! Hover here to read the full post or run ",{"text":"/trigger ","color":"gray"},{"text":"news","color":"aqua"},"!"],"hoverEvent":{"action":"show_text","contents":{"storage":"pandamium.db.mail:io","nbt":"selected.entry.data.message","interpret":true}},"clickEvent":{"action":"run_command","value":"/trigger news"}}]
data modify storage pandamium:queue entries append value {action:"announcement",color:"blue"}
execute store result storage pandamium:queue entries[-1].targets int 1 run scoreboard players get @s id
data modify storage pandamium:queue entries[-1].subheading set from storage pandamium.db.mail:io selected.entry.data.title
