data modify storage pandamium:queue selected set value {}
execute store result storage pandamium:queue selected.index int 1 run scoreboard players set <index> variable 0

data modify storage pandamium:queue actions_ran set value {}
execute if data storage pandamium:queue entries[0] run function pandamium:impl/queue/run/loop with storage pandamium:queue selected
