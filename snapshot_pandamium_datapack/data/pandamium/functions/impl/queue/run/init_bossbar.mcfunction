# arguments: uuid0, uuid1, uuid2, uuid3, action, name

$bossbar add pandamium:queue/$(action)/$(uuid0)_$(uuid1)_$(uuid2)_$(uuid3) $(name)
$data modify storage pandamium:queue selected.entry.meta.bossbar_id set value "pandamium:queue/$(action)/$(uuid0)_$(uuid1)_$(uuid2)_$(uuid3)"

$execute store result bossbar pandamium:queue/$(action)/$(uuid0)_$(uuid1)_$(uuid2)_$(uuid3) max store result storage pandamium:queue selected.entry.meta.max int 1 run data get storage pandamium:queue selected.entry.meta.max
$execute store result bossbar pandamium:queue/$(action)/$(uuid0)_$(uuid1)_$(uuid2)_$(uuid3) value store result storage pandamium:queue selected.entry.meta.value int 1 run data get storage pandamium:queue selected.entry.meta.value

$execute if score <queue.wait> variable matches 1.. store result bossbar pandamium:queue/$(action)/$(uuid0)_$(uuid1)_$(uuid2)_$(uuid3) max store result bossbar pandamium:queue/$(action)/$(uuid0)_$(uuid1)_$(uuid2)_$(uuid3) value run scoreboard players get <queue.wait> variable
