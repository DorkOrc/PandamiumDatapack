data modify storage pandamium.db.mail:data staff_inbox append value {}
data modify storage pandamium.db.mail:data staff_inbox[-1].mail_id set from storage pandamium.db.mail:io selected.entry.mail_id
scoreboard players add <sent_amount> variable 1
data modify storage pandamium:temp receivers_display_names set value ['"The Staff Team"']
