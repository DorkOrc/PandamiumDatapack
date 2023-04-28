data merge storage pandamium:containers {slot_prefix:'enderchest.'}
data merge storage pandamium:containers {container:'enderchest'}

execute if data storage pandamium:containers items[0] run function pandamium:impl/containers/run/generic
