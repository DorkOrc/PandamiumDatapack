data modify storage pandamium:temp buffer set value []
data modify storage pandamium:temp buffer append from storage pandamium:temp results[{children:[{}]}].children[]
data remove storage pandamium:temp results[].children
data modify storage pandamium:temp results append from storage pandamium:temp buffer[]

execute if data storage pandamium:temp results[{children:[{}]}] run function pandamium:impl/usernames_map/search_name/loop2
