data modify storage pandamium:queue selected.entry.meta.name set value '{"text":"Data Fixer","color":"yellow"}'
data remove storage pandamium:local functions."pandamium:impl/queue/actions/datafixer/*"

data modify storage pandamium:queue selected.entry.user_ids append from storage pandamium.db.players:data entries[].id
execute store result storage pandamium:queue selected.entry.meta.max int 1 if data storage pandamium:queue selected.entry.user_ids[]
