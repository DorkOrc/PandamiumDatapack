data modify storage pandamium:containers item set from storage pandamium:containers items[0]

execute store result score <slot> variable run data get storage pandamium:containers item.Slot
execute store result score <count> variable run data get storage pandamium:containers item.Count

scoreboard players reset <display_slot> variable

execute if score <slot> variable matches 0 run data merge storage pandamium:containers {slot_prefix:'ingredient'}
execute if score <slot> variable matches 1 run data merge storage pandamium:containers {slot_prefix:'fuel'}
execute if score <slot> variable matches 2 run data merge storage pandamium:containers {slot_prefix:'result'}

function pandamium:impl/containers/run/print_item

data remove storage pandamium:containers items[0]
execute if data storage pandamium:containers items[0] run function pandamium:impl/containers/run/furnace
