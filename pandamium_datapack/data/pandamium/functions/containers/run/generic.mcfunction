data modify storage pandamium:containers item set from storage pandamium:containers items[0]

execute store result score <slot> temp run data get storage pandamium:containers item.Slot
scoreboard players operation <display_slot> temp = <slot> temp
execute store result score <count> temp run data get storage pandamium:containers item.Count

function pandamium:containers/run/print_item

data remove storage pandamium:containers items[0]
execute if data storage pandamium:containers items[0] run function pandamium:containers/run/generic
