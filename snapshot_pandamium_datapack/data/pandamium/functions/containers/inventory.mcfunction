data merge storage pandamium:containers {slot_prefix:'hotbar.'}
data merge storage pandamium:containers {container:'inventory'}

execute if data storage pandamium:containers items[0] run function pandamium:containers/run/inventory
