function pandamium:utils/database/mail/load/from_mail_id with storage pandamium.db.mail:data news_feed_inbox[-1]
execute store result score <last_news_hour_id> variable run data get storage pandamium.db.mail:io selected.entry.hour_id

scoreboard players operation <last_joined_hour_id> variable = @s last_joined.datetime
scoreboard players operation <last_joined_hour_id> variable /= #3600 constant
execute if score <last_joined_hour_id> variable > <last_news_hour_id> variable run return 0

tellraw @s [{text:"[News]",color:"#00AA7F"},{text:" ",color:"#65FF8D",extra:[{text:"",color:"#65FFD8",extra:[{storage:"pandamium.db.mail:io",nbt:"selected.entry.data.title",interpret:true}]},{text:"! Hover here to read the full post or run "},{text:"/trigger ",color:"gray"},{text:"news",color:"aqua"},{text:"!"}],hover_event:{action:"show_text",value:{storage:"pandamium.db.mail:io",nbt:"selected.entry.data.message",interpret:true}},click_event:{action:"run_command",command:"trigger news"}}]
data modify storage pandamium:queue entries append value {action:"announcement",color:"blue"}
execute store result storage pandamium:queue entries[-1].targets int 1 run scoreboard players get @s id
data modify storage pandamium:queue entries[-1].subheading set from storage pandamium.db.mail:io selected.entry.data.title
