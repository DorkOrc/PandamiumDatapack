data modify storage pandamium:containers item set from storage pandamium:containers items[0]

execute store result score <slot> variable run data get storage pandamium:containers item.Slot
execute store result score <count> variable run data get storage pandamium:containers item.count

scoreboard players operation <display_slot> variable = <slot> variable
execute if score <slot> variable matches 3..4 run scoreboard players reset <display_slot> variable

execute if score <slot> variable matches 0..2 run data merge storage pandamium:containers {slot_prefix:'potion.'}
execute if score <slot> variable matches 3 run data merge storage pandamium:containers {slot_prefix:'ingredient'}
execute if score <slot> variable matches 4 run data merge storage pandamium:containers {slot_prefix:'fuel'}

function pandamium:impl/containers/run/print_item

data remove storage pandamium:containers items[0]
execute if data storage pandamium:containers items[0] run function pandamium:impl/containers/run/brewing_stand
