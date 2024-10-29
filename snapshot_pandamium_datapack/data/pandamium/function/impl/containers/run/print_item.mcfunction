data remove storage pandamium:containers plural
execute unless score <count> variable matches 1 run data modify storage pandamium:containers plural set value 's'
data modify storage pandamium:containers item.display_id_parent set value '""'
data modify storage pandamium:containers item.display_id set string storage pandamium:containers item.id 10

# components
execute if data storage pandamium:containers item.components run return run function pandamium:impl/containers/run/components

# else:
tellraw @s ["",[{"nbt":"slot_prefix","storage":"pandamium:containers","color":"aqua","underlined":true},{"score":{"name":"<display_slot>","objective":"variable"}}],": ",{"score":{"name":"<count>","objective":"variable"},"color":"gold"}," ",{"nbt":"item.display_id","storage":"pandamium:containers","color":"yellow"},{"nbt":"plural","storage":"pandamium:containers","color":"gray"}]
