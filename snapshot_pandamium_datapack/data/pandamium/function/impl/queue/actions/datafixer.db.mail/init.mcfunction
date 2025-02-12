data modify storage pandamium:queue selected.entry.meta.name set value {text:"Updating [mail] Database",color:"yellow"}
data remove storage pandamium:local functions."pandamium:impl/queue/actions/datafixer.db.mail/*"

# patch all entries in the [mail] database
data modify storage pandamium:queue selected.entry.mail_ids append from storage pandamium.db.mail:data entries[].mail_id
execute store result storage pandamium:queue selected.entry.meta.max int 1 if data storage pandamium:queue selected.entry.mail_ids[]
