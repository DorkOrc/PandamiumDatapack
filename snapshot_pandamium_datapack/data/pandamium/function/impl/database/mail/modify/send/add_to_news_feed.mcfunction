data modify storage pandamium.db.mail:data news_feed_inbox append value {}
data modify storage pandamium.db.mail:data news_feed_inbox[-1].mail_id set from storage pandamium.db.mail:io selected.entry.mail_id
scoreboard players add <sent_amount> variable 1
data modify storage pandamium:temp receivers_display_names set value ['"News Feed"']

data modify storage pandamium:queue entries append value {action:"announcement"}
execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '[{"storage":"pandamium.db.mail:io","nbt":"selected.entry.data.title","interpret":true}]'
execute in pandamium:staff_world run data modify storage pandamium:queue entries[-1].subheading set from block 3 0 0 front_text.messages[0]
