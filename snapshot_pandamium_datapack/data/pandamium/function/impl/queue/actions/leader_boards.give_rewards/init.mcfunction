# inputs:
# - storage pandamium:queue selected.entry.year
# - storage pandamium:queue selected.entry.month_name
# - storage pandamium:queue selected.entry.places

data modify storage pandamium:queue selected.entry.meta.name set value "Granting Monthly Rewards"

execute unless data storage pandamium:queue selected.entry.year run return run data modify storage pandamium:queue selected.entry.meta.cancel set value 1b
execute unless data storage pandamium:queue selected.entry.month_name run return run data modify storage pandamium:queue selected.entry.meta.cancel set value 1b

execute store result score <entries> variable store result storage pandamium:queue selected.entry.meta.max int 1 if data storage pandamium:queue selected.entry.places[]
execute if score <entries> variable matches 0 run data modify storage pandamium:queue selected.entry.meta.cancel set value 1b
