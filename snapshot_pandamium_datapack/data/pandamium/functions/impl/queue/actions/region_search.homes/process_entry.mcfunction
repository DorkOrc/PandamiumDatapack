execute store result score <x> variable run data get storage pandamium:queue selected.entry.entries[-1].xyz[0]
execute store result score <z> variable run data get storage pandamium:queue selected.entry.entries[-1].xyz[2]

execute store result score <dx> variable run data get storage pandamium:queue selected.entry.origin.x
execute store result score <dz> variable run data get storage pandamium:queue selected.entry.origin.z

scoreboard players operation <dx> variable -= <x> variable
scoreboard players operation <dz> variable -= <z> variable

execute store result score <squared_distance> variable run scoreboard players operation <dx> variable *= <dx> variable
scoreboard players operation <dz> variable *= <dz> variable
scoreboard players operation <squared_distance> variable += <dz> variable

execute if score <squared_distance> variable matches ..250000 run data modify storage pandamium:queue selected.entry.output append from storage pandamium:queue selected.entry.entries[-1]

data modify storage pandamium:queue selected.entry.output[-1].data_old.id set from storage pandamium:queue selected.entry.output[-1].data[0]
data modify storage pandamium:queue selected.entry.output[-1].data_old.home set from storage pandamium:queue selected.entry.output[-1].data[1]
data remove storage pandamium:queue selected.entry.output[-1].data
data modify storage pandamium:queue selected.entry.output[-1].data set from storage pandamium:queue selected.entry.output[-1].data_old
data remove storage pandamium:queue selected.entry.output[-1].data_old

function pandamium:impl/queue/actions/region_search.homes/get_message with storage pandamium:queue selected.entry.output[-1].data


data remove storage pandamium:queue selected.entry.entries[-1]
