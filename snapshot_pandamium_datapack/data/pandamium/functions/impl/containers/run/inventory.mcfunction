data modify storage pandamium:containers item set from storage pandamium:containers items[0]

execute store result score <slot> variable run data get storage pandamium:containers item.Slot
execute store result score <count> variable run data get storage pandamium:containers item.count

execute if score <slot> variable matches ..-1 run scoreboard players add <slot> variable 256
scoreboard players operation <display_slot> variable = <slot> variable
execute unless score <slot> variable matches 0..35 run scoreboard players reset <display_slot> variable
execute if score <slot> variable matches 9..35 run scoreboard players remove <display_slot> variable 9

execute if score <slot> variable matches 0..8 run data merge storage pandamium:containers {slot_prefix:'hotbar.'}
execute if score <slot> variable matches 9..35 run data merge storage pandamium:containers {slot_prefix:'inventory.'}
execute if score <slot> variable matches 100 run data merge storage pandamium:containers {slot_prefix:'armor.feet'}
execute if score <slot> variable matches 101 run data merge storage pandamium:containers {slot_prefix:'armor.legs'}
execute if score <slot> variable matches 102 run data merge storage pandamium:containers {slot_prefix:'armor.chest'}
execute if score <slot> variable matches 103 run data merge storage pandamium:containers {slot_prefix:'armor.head'}
execute if score <slot> variable matches 150 run data merge storage pandamium:containers {slot_prefix:'weapon.offhand'}

function pandamium:impl/containers/run/print_item

data remove storage pandamium:containers items[0]
execute if data storage pandamium:containers items[0] run function pandamium:impl/containers/run/inventory
