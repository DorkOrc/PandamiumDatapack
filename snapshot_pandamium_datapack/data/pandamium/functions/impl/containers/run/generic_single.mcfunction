data modify storage pandamium:containers item set from storage pandamium:containers items[0]
function pandamium:impl/containers/run/fix_slot_format

scoreboard players set <slot> variable 0
scoreboard players reset <display_slot> variable
execute store result score <count> variable run data get storage pandamium:containers item.count

function pandamium:impl/containers/run/print_item
