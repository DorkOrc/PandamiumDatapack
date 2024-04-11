data modify storage pandamium:queue selected.entry.meta.name set value '{"text":"Data Fixer","color":"yellow"}'

data modify storage pandamium:queue selected.entry.names append from storage pandamium.db.players:data entries[].username
execute store result storage pandamium:queue selected.entry.meta.max int 1 if data storage pandamium:queue selected.entry.names[]
