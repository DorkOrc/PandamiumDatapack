# arguments: target_index, top_index

$data modify storage pandamium:cache macros.movement_trail.lines."$(target_index)" set from storage pandamium:cache macros.movement_trail.entries[-1].command
$data modify storage pandamium:cache macros.movement_trail.lines."$(top_index)" set value "return 0"

$data modify storage pandamium:cache macros.movement_trail.entries[$(target_index)] set from storage pandamium:cache macros.movement_trail.entries[]
$data modify storage pandamium:cache macros.movement_trail.entries[$(target_index)].index set value $(target_index)
data remove storage pandamium:cache macros.movement_trail.entries[-1]
