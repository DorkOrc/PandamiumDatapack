data modify storage pandamium:queue selected.entry.meta.name set value "Locating Pale Garden"

execute unless data storage pandamium:queue selected.entry.user_id run return run data modify storage pandamium:queue selected.entry.meta.cancel set value 1b
data modify storage pandamium:queue selected.entry.given_back set value 0b

data modify storage pandamium:queue selected.entry.meta.max set value 2
