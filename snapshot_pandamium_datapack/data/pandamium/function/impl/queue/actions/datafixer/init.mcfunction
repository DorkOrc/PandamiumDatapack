data modify storage pandamium:queue selected.entry.meta.name set value '{"text":"Data Fixer","color":"yellow"}'
data remove storage pandamium:local functions."pandamium:impl/queue/actions/datafixer/*"

data modify storage pandamium:queue selected.entry merge value {regions:[],chunks:[]}

data modify storage pandamium:queue selected.entry.regions append from storage pandamium.db.regions:data entries[].region
execute store result storage pandamium:queue selected.entry.meta.max int 1 if data storage pandamium:queue selected.entry.regions[]
