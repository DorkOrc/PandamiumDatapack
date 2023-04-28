data merge storage pandamium:containers {slot_prefix:'container.'}
data merge storage pandamium:containers {container:'generic'}

execute if data storage pandamium:containers items[0] run function pandamium:impl/containers/run/generic
