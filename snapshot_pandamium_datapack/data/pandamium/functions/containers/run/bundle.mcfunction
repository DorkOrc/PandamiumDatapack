data modify storage pandamium:containers item set from storage pandamium:containers items[0]

execute store result score <count> variable run data get storage pandamium:containers item.Count

function pandamium:containers/run/print_item

scoreboard players add <display_slot> variable 1
data remove storage pandamium:containers items[0]
execute if data storage pandamium:containers items[0] run function pandamium:containers/run/bundle
