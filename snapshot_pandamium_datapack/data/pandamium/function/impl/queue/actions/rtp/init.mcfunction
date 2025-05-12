data modify storage pandamium:queue selected.entry.meta.name set value {bold:true,color:"yellow",text:"RTP"}
data modify storage pandamium:queue selected.entry.meta.status set value {bold:true,text:"Searching..."}

execute unless data storage pandamium:queue selected.entry.user_id run return run data modify storage pandamium:queue selected.entry.meta.cancel set value 1b

data modify storage pandamium:queue selected.entry.meta.bossbar_color set value "yellow"
data modify storage pandamium:queue selected.entry.meta.max set value 1
data modify storage pandamium:queue selected.entry.meta.value set value 1
