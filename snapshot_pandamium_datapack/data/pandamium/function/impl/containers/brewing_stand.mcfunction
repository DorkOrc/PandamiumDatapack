data merge storage pandamium:containers {slot_prefix:'brewing_stand.'}
data merge storage pandamium:containers {container:'brewing_stand'}

execute if data storage pandamium:containers items[0] run function pandamium:impl/containers/run/brewing_stand
