data modify storage pandamium:containers item set from storage pandamium:containers items[0]

execute store result score <slot> variable run data get storage pandamium:containers item.Slot
scoreboard players operation <display_slot> variable = <slot> variable
execute store result score <count> variable run data get storage pandamium:containers item.count

function pandamium:impl/containers/run/print_item

data remove storage pandamium:containers items[0]
execute if data storage pandamium:containers items[0] run function pandamium:impl/containers/run/generic
