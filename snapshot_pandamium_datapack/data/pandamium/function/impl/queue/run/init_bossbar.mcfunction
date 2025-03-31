# arguments: uuid0, uuid1, uuid2, uuid3, action, name

# create bossbar and save the bossbar id
$bossbar add pandamium:queue/$(action)/$(uuid0)_$(uuid1)_$(uuid2)_$(uuid3) $(name)
$data modify storage pandamium:queue selected.entry.meta.bossbar_id set value "pandamium:queue/$(action)/$(uuid0)_$(uuid1)_$(uuid2)_$(uuid3)"

# validate the initial "max" and "value" meta fields
execute if predicate {condition:"value_check",value:{type:"storage",storage:"pandamium:queue",path:"selected.entry.meta.max"},range:{max:0}} run data modify storage pandamium:queue selected.entry.meta.max set value 1
execute if predicate {condition:"value_check",value:{type:"storage",storage:"pandamium:queue",path:"selected.entry.meta.value"},range:{max:-1}} run data modify storage pandamium:queue selected.entry.meta.value set value 0
execute if predicate {condition:"value_check",value:{type:"storage",storage:"pandamium:queue",path:"selected.entry.meta.value"},range:{min:{type:"storage",storage:"pandamium:queue",path:"selected.entry.meta.max"}}} run data modify storage pandamium:queue selected.entry.meta.value set from storage pandamium:queue selected.entry.meta.max

# validate the data type of the "max" and "value" meta fields, and set the bossbar's values to the meta values
$execute store result bossbar pandamium:queue/$(action)/$(uuid0)_$(uuid1)_$(uuid2)_$(uuid3) max store result storage pandamium:queue selected.entry.meta.max int 1 run data get storage pandamium:queue selected.entry.meta.max
$execute store result bossbar pandamium:queue/$(action)/$(uuid0)_$(uuid1)_$(uuid2)_$(uuid3) value store result storage pandamium:queue selected.entry.meta.value int 1 run data get storage pandamium:queue selected.entry.meta.value

# set "max" and "value" fields to the "wait" time value if relevant
$execute if score <queue.wait> variable matches 1.. store result bossbar pandamium:queue/$(action)/$(uuid0)_$(uuid1)_$(uuid2)_$(uuid3) max store result bossbar pandamium:queue/$(action)/$(uuid0)_$(uuid1)_$(uuid2)_$(uuid3) value run scoreboard players get <queue.wait> variable
