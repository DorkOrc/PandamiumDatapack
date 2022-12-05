data merge storage pandamium:containers {slot_prefix:'bundle.'}
data merge storage pandamium:containers {container:'bundle'}

scoreboard players set <display_slot> variable 0
execute if data storage pandamium:containers items[0] run function pandamium:containers/run/bundle
