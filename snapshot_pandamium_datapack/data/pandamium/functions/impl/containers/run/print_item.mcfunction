data remove storage pandamium:containers plural
execute unless score <count> variable matches 1 run data modify storage pandamium:containers plural set value 's'
data modify storage pandamium:containers item.id set string storage pandamium:containers item.id 10
execute unless data storage pandamium:containers item.tag run tellraw @s ["",[{"nbt":"slot_prefix","storage":"pandamium:containers","color":"aqua","underlined":true},{"score":{"name":"<display_slot>","objective":"variable"}}],": ",{"score":{"name":"<count>","objective":"variable"},"color":"gold"}," ",{"nbt":"item.id","storage":"pandamium:containers","color":"yellow"},{"nbt":"plural","storage":"pandamium:containers","color":"gray"}]
execute if data storage pandamium:containers item.tag run function pandamium:impl/containers/run/nbt
