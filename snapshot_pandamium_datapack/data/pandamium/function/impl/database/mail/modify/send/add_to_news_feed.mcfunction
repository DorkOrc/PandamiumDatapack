data modify storage pandamium.db.mail:data news_feed_inbox append value {}
data modify storage pandamium.db.mail:data news_feed_inbox[-1].mail_id set from storage pandamium.db.mail:io selected.entry.mail_id
scoreboard players add <sent_amount> variable 1
data modify storage pandamium:temp receivers_display_names set value ["News Feed"]

data modify storage pandamium:queue entries append value {action:"announcement",color:"blue"}

data modify storage pandamium:text input set value {storage:"pandamium.db.mail:io",nbt:"selected.entry.data.title",interpret:true}
function pandamium:utils/text/input/resolve
execute in pandamium:staff_world run data modify storage pandamium:queue entries[-1].subheading set from storage pandamium:text input

tellraw @a [{text:"[News]",color:"#00AA7F"},{text:" ",color:"#65FF8D",extra:[{text:"",color:"#65FFD8",extra:[{storage:"pandamium.db.mail:io",nbt:"selected.entry.data.title",interpret:true}]},{text:"! Hover here to read the full post or run "},{text:"/trigger ",color:"gray"},{text:"news",color:"aqua"},{text:"!"}],hover_event:{action:"show_text",value:{storage:"pandamium.db.mail:io",nbt:"selected.entry.data.message",interpret:true}},click_event:{action:"run_command",command:"trigger news"}}]
