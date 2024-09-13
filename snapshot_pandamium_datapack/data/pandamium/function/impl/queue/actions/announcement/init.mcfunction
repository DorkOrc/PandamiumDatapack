execute unless data storage pandamium:queue selected.entry.targets run data modify storage pandamium:queue selected.entry.targets set value "@a"
data modify storage pandamium:queue selected.entry.meta.players set from storage pandamium:queue selected.entry.targets

execute unless data storage pandamium:queue selected.entry.heading run data modify storage pandamium:queue selected.entry.heading set value '{"text":"NEWS","bold":true}'
data modify storage pandamium:queue selected.entry.meta.name set from storage pandamium:queue selected.entry.heading

execute unless data storage pandamium:queue selected.entry.subheading run data modify storage pandamium:queue selected.entry.subheading set value '["Run ",{"text":"/trigger ","color":"gray"},{"text":"news","color":"aqua"},"!"]'
data modify storage pandamium:queue selected.entry.meta.status set from storage pandamium:queue selected.entry.subheading

execute unless data storage pandamium:queue selected.entry.color run data modify storage pandamium:queue selected.entry.color set value "purple"
data modify storage pandamium:queue selected.entry.meta.bossbar_color set from storage pandamium:queue selected.entry.color

execute unless data storage pandamium:queue selected.entry.duration run data modify storage pandamium:queue selected.entry.duration set value 300
data modify storage pandamium:queue selected.entry.meta.max set from storage pandamium:queue selected.entry.duration

data modify storage pandamium:queue selected.entry.age set value 0
data modify storage pandamium:queue selected.entry.meta.do_bossbar set value 1b
