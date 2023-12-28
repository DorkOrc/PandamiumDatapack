# arguments: index

$data modify storage pandamium:queue entries[$(index)] set from storage pandamium:queue selected.entry
data remove storage pandamium:queue selected
