data modify storage pandamium:queue selected.entry.meta.name set value {text:"Updating [entities] Database",color:"yellow"}
data remove storage pandamium:local functions."pandamium:impl/queue/actions/datafixer.db.entities/*"

# patch all entries in the [entities] database
data modify storage pandamium:queue selected.entry.uuids append from storage pandamium.db.entities:data entries[].uuid
execute store result storage pandamium:queue selected.entry.meta.max int 1 if data storage pandamium:queue selected.entry.uuids[]
