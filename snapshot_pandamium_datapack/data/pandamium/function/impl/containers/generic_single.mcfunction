data merge storage pandamium:containers {slot_prefix:'contents'}
data merge storage pandamium:containers {container:'generic_single'}

execute if data storage pandamium:containers items[0] run function pandamium:impl/containers/run/generic_single
