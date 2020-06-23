# Place placeholder barriers. 

execute run replaceitem block -1 52 -1 container.0 barrier
execute run replaceitem block -1 52 -1 container.1 barrier
execute run replaceitem block -1 52 -1 container.2 barrier
execute run replaceitem block -1 52 -1 container.3 barrier
execute run replaceitem block -1 52 -1 container.4 barrier
execute run replaceitem block -1 52 -1 container.5 barrier
execute run replaceitem block -1 52 -1 container.6 barrier
execute run replaceitem block -1 52 -1 container.7 barrier
execute run replaceitem block -1 52 -1 container.8 barrier
execute run replaceitem block -1 52 -1 container.9 barrier
execute run replaceitem block -1 52 -1 container.10 barrier
execute run replaceitem block -1 52 -1 container.11 barrier
execute run replaceitem block -1 52 -1 container.12 barrier
execute run replaceitem block -1 52 -1 container.13 barrier
execute run replaceitem block -1 52 -1 container.14 barrier
execute run replaceitem block -1 52 -1 container.15 barrier
execute run replaceitem block -1 52 -1 container.16 barrier
execute run replaceitem block -1 52 -1 container.17 barrier
execute run replaceitem block -1 52 -1 container.18 barrier
execute run replaceitem block -1 52 -1 container.19 barrier
execute run replaceitem block -1 52 -1 container.20 barrier
execute run replaceitem block -1 52 -1 container.21 barrier
execute run replaceitem block -1 52 -1 container.22 barrier
execute run replaceitem block -1 52 -1 container.23 barrier
execute run replaceitem block -1 52 -1 container.24 barrier
execute run replaceitem block -1 52 -1 container.26 barrier
execute run replaceitem block -1 52 -1 container.25 barrier
execute run replaceitem block -1 52 -1 container.27 barrier

execute run replaceitem block 0 52 -1 container.0 barrier
execute run replaceitem block 0 52 -1 container.1 barrier
execute run replaceitem block 0 52 -1 container.2 barrier
execute run replaceitem block 0 52 -1 container.3 barrier
execute run replaceitem block 0 52 -1 container.4 barrier
execute run replaceitem block 0 52 -1 container.5 barrier
execute run replaceitem block 0 52 -1 container.6 barrier
execute run replaceitem block 0 52 -1 container.7 barrier
execute run replaceitem block 0 52 -1 container.8 barrier

execute run replaceitem block 0 52 -1 container.18 barrier
execute run replaceitem block 0 52 -1 container.19 barrier
execute run replaceitem block 0 52 -1 container.20 barrier
execute run replaceitem block 0 52 -1 container.21 barrier

execute run replaceitem block 0 52 -1 container.26 barrier

# Copy over id, count, and tag. 

data modify block -1 52 -1 Items[{Slot:0b}].id set from entity @s Inventory[{Slot:9b}].id
data modify block -1 52 -1 Items[{Slot:1b}].id set from entity @s Inventory[{Slot:10b}].id
data modify block -1 52 -1 Items[{Slot:2b}].id set from entity @s Inventory[{Slot:11b}].id
data modify block -1 52 -1 Items[{Slot:3b}].id set from entity @s Inventory[{Slot:12b}].id
data modify block -1 52 -1 Items[{Slot:4b}].id set from entity @s Inventory[{Slot:13b}].id
data modify block -1 52 -1 Items[{Slot:5b}].id set from entity @s Inventory[{Slot:14b}].id
data modify block -1 52 -1 Items[{Slot:6b}].id set from entity @s Inventory[{Slot:15b}].id
data modify block -1 52 -1 Items[{Slot:7b}].id set from entity @s Inventory[{Slot:16b}].id
data modify block -1 52 -1 Items[{Slot:8b}].id set from entity @s Inventory[{Slot:17b}].id
data modify block -1 52 -1 Items[{Slot:9b}].id set from entity @s Inventory[{Slot:18b}].id
data modify block -1 52 -1 Items[{Slot:10b}].id set from entity @s Inventory[{Slot:19b}].id
data modify block -1 52 -1 Items[{Slot:11b}].id set from entity @s Inventory[{Slot:20b}].id
data modify block -1 52 -1 Items[{Slot:12b}].id set from entity @s Inventory[{Slot:21b}].id
data modify block -1 52 -1 Items[{Slot:13b}].id set from entity @s Inventory[{Slot:22b}].id
data modify block -1 52 -1 Items[{Slot:14b}].id set from entity @s Inventory[{Slot:23b}].id
data modify block -1 52 -1 Items[{Slot:15b}].id set from entity @s Inventory[{Slot:24b}].id
data modify block -1 52 -1 Items[{Slot:16b}].id set from entity @s Inventory[{Slot:25b}].id
data modify block -1 52 -1 Items[{Slot:17b}].id set from entity @s Inventory[{Slot:26b}].id
data modify block -1 52 -1 Items[{Slot:18b}].id set from entity @s Inventory[{Slot:27b}].id
data modify block -1 52 -1 Items[{Slot:19b}].id set from entity @s Inventory[{Slot:28b}].id
data modify block -1 52 -1 Items[{Slot:20b}].id set from entity @s Inventory[{Slot:29b}].id
data modify block -1 52 -1 Items[{Slot:21b}].id set from entity @s Inventory[{Slot:30b}].id
data modify block -1 52 -1 Items[{Slot:22b}].id set from entity @s Inventory[{Slot:31b}].id
data modify block -1 52 -1 Items[{Slot:23b}].id set from entity @s Inventory[{Slot:32b}].id
data modify block -1 52 -1 Items[{Slot:24b}].id set from entity @s Inventory[{Slot:33b}].id
data modify block -1 52 -1 Items[{Slot:25b}].id set from entity @s Inventory[{Slot:34b}].id
data modify block -1 52 -1 Items[{Slot:26b}].id set from entity @s Inventory[{Slot:35b}].id
data modify block 0 52 -1 Items[{Slot:0b}].id set from entity @s Inventory[{Slot:0b}].id
data modify block 0 52 -1 Items[{Slot:1b}].id set from entity @s Inventory[{Slot:1b}].id
data modify block 0 52 -1 Items[{Slot:2b}].id set from entity @s Inventory[{Slot:2b}].id
data modify block 0 52 -1 Items[{Slot:3b}].id set from entity @s Inventory[{Slot:3b}].id
data modify block 0 52 -1 Items[{Slot:4b}].id set from entity @s Inventory[{Slot:4b}].id
data modify block 0 52 -1 Items[{Slot:5b}].id set from entity @s Inventory[{Slot:5b}].id
data modify block 0 52 -1 Items[{Slot:6b}].id set from entity @s Inventory[{Slot:6b}].id
data modify block 0 52 -1 Items[{Slot:7b}].id set from entity @s Inventory[{Slot:7b}].id
data modify block 0 52 -1 Items[{Slot:8b}].id set from entity @s Inventory[{Slot:8b}].id
data modify block 0 52 -1 Items[{Slot:18b}].id set from entity @s Inventory[{Slot:103b}].id
data modify block 0 52 -1 Items[{Slot:19b}].id set from entity @s Inventory[{Slot:102b}].id
data modify block 0 52 -1 Items[{Slot:20b}].id set from entity @s Inventory[{Slot:101b}].id
data modify block 0 52 -1 Items[{Slot:21b}].id set from entity @s Inventory[{Slot:100b}].id
data modify block 0 52 -1 Items[{Slot:26b}].id set from entity @s Inventory[{Slot:-106b}].id

data modify block -1 52 -1 Items[{Slot:0b}].Count set from entity @s Inventory[{Slot:9b}].Count
data modify block -1 52 -1 Items[{Slot:1b}].Count set from entity @s Inventory[{Slot:10b}].Count
data modify block -1 52 -1 Items[{Slot:2b}].Count set from entity @s Inventory[{Slot:11b}].Count
data modify block -1 52 -1 Items[{Slot:3b}].Count set from entity @s Inventory[{Slot:12b}].Count
data modify block -1 52 -1 Items[{Slot:4b}].Count set from entity @s Inventory[{Slot:13b}].Count
data modify block -1 52 -1 Items[{Slot:5b}].Count set from entity @s Inventory[{Slot:14b}].Count
data modify block -1 52 -1 Items[{Slot:6b}].Count set from entity @s Inventory[{Slot:15b}].Count
data modify block -1 52 -1 Items[{Slot:7b}].Count set from entity @s Inventory[{Slot:16b}].Count
data modify block -1 52 -1 Items[{Slot:8b}].Count set from entity @s Inventory[{Slot:17b}].Count
data modify block -1 52 -1 Items[{Slot:9b}].Count set from entity @s Inventory[{Slot:18b}].Count
data modify block -1 52 -1 Items[{Slot:10b}].Count set from entity @s Inventory[{Slot:19b}].Count
data modify block -1 52 -1 Items[{Slot:11b}].Count set from entity @s Inventory[{Slot:20b}].Count
data modify block -1 52 -1 Items[{Slot:12b}].Count set from entity @s Inventory[{Slot:21b}].Count
data modify block -1 52 -1 Items[{Slot:13b}].Count set from entity @s Inventory[{Slot:22b}].Count
data modify block -1 52 -1 Items[{Slot:14b}].Count set from entity @s Inventory[{Slot:23b}].Count
data modify block -1 52 -1 Items[{Slot:15b}].Count set from entity @s Inventory[{Slot:24b}].Count
data modify block -1 52 -1 Items[{Slot:16b}].Count set from entity @s Inventory[{Slot:25b}].Count
data modify block -1 52 -1 Items[{Slot:17b}].Count set from entity @s Inventory[{Slot:26b}].Count
data modify block -1 52 -1 Items[{Slot:18b}].Count set from entity @s Inventory[{Slot:27b}].Count
data modify block -1 52 -1 Items[{Slot:19b}].Count set from entity @s Inventory[{Slot:28b}].Count
data modify block -1 52 -1 Items[{Slot:20b}].Count set from entity @s Inventory[{Slot:29b}].Count
data modify block -1 52 -1 Items[{Slot:21b}].Count set from entity @s Inventory[{Slot:30b}].Count
data modify block -1 52 -1 Items[{Slot:22b}].Count set from entity @s Inventory[{Slot:31b}].Count
data modify block -1 52 -1 Items[{Slot:23b}].Count set from entity @s Inventory[{Slot:32b}].Count
data modify block -1 52 -1 Items[{Slot:24b}].Count set from entity @s Inventory[{Slot:33b}].Count
data modify block -1 52 -1 Items[{Slot:25b}].Count set from entity @s Inventory[{Slot:34b}].Count
data modify block -1 52 -1 Items[{Slot:26b}].Count set from entity @s Inventory[{Slot:35b}].Count
data modify block 0 52 -1 Items[{Slot:0b}].Count set from entity @s Inventory[{Slot:0b}].Count
data modify block 0 52 -1 Items[{Slot:1b}].Count set from entity @s Inventory[{Slot:1b}].Count
data modify block 0 52 -1 Items[{Slot:2b}].Count set from entity @s Inventory[{Slot:2b}].Count
data modify block 0 52 -1 Items[{Slot:3b}].Count set from entity @s Inventory[{Slot:3b}].Count
data modify block 0 52 -1 Items[{Slot:4b}].Count set from entity @s Inventory[{Slot:4b}].Count
data modify block 0 52 -1 Items[{Slot:5b}].Count set from entity @s Inventory[{Slot:5b}].Count
data modify block 0 52 -1 Items[{Slot:6b}].Count set from entity @s Inventory[{Slot:6b}].Count
data modify block 0 52 -1 Items[{Slot:7b}].Count set from entity @s Inventory[{Slot:7b}].Count
data modify block 0 52 -1 Items[{Slot:8b}].Count set from entity @s Inventory[{Slot:8b}].Count
data modify block 0 52 -1 Items[{Slot:18b}].Count set from entity @s Inventory[{Slot:103b}].Count
data modify block 0 52 -1 Items[{Slot:19b}].Count set from entity @s Inventory[{Slot:102b}].Count
data modify block 0 52 -1 Items[{Slot:20b}].Count set from entity @s Inventory[{Slot:101b}].Count
data modify block 0 52 -1 Items[{Slot:21b}].Count set from entity @s Inventory[{Slot:100b}].Count
data modify block 0 52 -1 Items[{Slot:26b}].Count set from entity @s Inventory[{Slot:-106b}].Count

data modify block -1 52 -1 Items[{Slot:0b}].tag set from entity @s Inventory[{Slot:9b}].tag
data modify block -1 52 -1 Items[{Slot:1b}].tag set from entity @s Inventory[{Slot:10b}].tag
data modify block -1 52 -1 Items[{Slot:2b}].tag set from entity @s Inventory[{Slot:11b}].tag
data modify block -1 52 -1 Items[{Slot:3b}].tag set from entity @s Inventory[{Slot:12b}].tag
data modify block -1 52 -1 Items[{Slot:4b}].tag set from entity @s Inventory[{Slot:13b}].tag
data modify block -1 52 -1 Items[{Slot:5b}].tag set from entity @s Inventory[{Slot:14b}].tag
data modify block -1 52 -1 Items[{Slot:6b}].tag set from entity @s Inventory[{Slot:15b}].tag
data modify block -1 52 -1 Items[{Slot:7b}].tag set from entity @s Inventory[{Slot:16b}].tag
data modify block -1 52 -1 Items[{Slot:8b}].tag set from entity @s Inventory[{Slot:17b}].tag
data modify block -1 52 -1 Items[{Slot:9b}].tag set from entity @s Inventory[{Slot:18b}].tag
data modify block -1 52 -1 Items[{Slot:10b}].tag set from entity @s Inventory[{Slot:19b}].tag
data modify block -1 52 -1 Items[{Slot:11b}].tag set from entity @s Inventory[{Slot:20b}].tag
data modify block -1 52 -1 Items[{Slot:12b}].tag set from entity @s Inventory[{Slot:21b}].tag
data modify block -1 52 -1 Items[{Slot:13b}].tag set from entity @s Inventory[{Slot:22b}].tag
data modify block -1 52 -1 Items[{Slot:14b}].tag set from entity @s Inventory[{Slot:23b}].tag
data modify block -1 52 -1 Items[{Slot:15b}].tag set from entity @s Inventory[{Slot:24b}].tag
data modify block -1 52 -1 Items[{Slot:16b}].tag set from entity @s Inventory[{Slot:25b}].tag
data modify block -1 52 -1 Items[{Slot:17b}].tag set from entity @s Inventory[{Slot:26b}].tag
data modify block -1 52 -1 Items[{Slot:18b}].tag set from entity @s Inventory[{Slot:27b}].tag
data modify block -1 52 -1 Items[{Slot:19b}].tag set from entity @s Inventory[{Slot:28b}].tag
data modify block -1 52 -1 Items[{Slot:20b}].tag set from entity @s Inventory[{Slot:29b}].tag
data modify block -1 52 -1 Items[{Slot:21b}].tag set from entity @s Inventory[{Slot:30b}].tag
data modify block -1 52 -1 Items[{Slot:22b}].tag set from entity @s Inventory[{Slot:31b}].tag
data modify block -1 52 -1 Items[{Slot:23b}].tag set from entity @s Inventory[{Slot:32b}].tag
data modify block -1 52 -1 Items[{Slot:24b}].tag set from entity @s Inventory[{Slot:33b}].tag
data modify block -1 52 -1 Items[{Slot:25b}].tag set from entity @s Inventory[{Slot:34b}].tag
data modify block -1 52 -1 Items[{Slot:26b}].tag set from entity @s Inventory[{Slot:35b}].tag
data modify block 0 52 -1 Items[{Slot:0b}].tag set from entity @s Inventory[{Slot:0b}].tag
data modify block 0 52 -1 Items[{Slot:1b}].tag set from entity @s Inventory[{Slot:1b}].tag
data modify block 0 52 -1 Items[{Slot:2b}].tag set from entity @s Inventory[{Slot:2b}].tag
data modify block 0 52 -1 Items[{Slot:3b}].tag set from entity @s Inventory[{Slot:3b}].tag
data modify block 0 52 -1 Items[{Slot:4b}].tag set from entity @s Inventory[{Slot:4b}].tag
data modify block 0 52 -1 Items[{Slot:5b}].tag set from entity @s Inventory[{Slot:5b}].tag
data modify block 0 52 -1 Items[{Slot:6b}].tag set from entity @s Inventory[{Slot:6b}].tag
data modify block 0 52 -1 Items[{Slot:7b}].tag set from entity @s Inventory[{Slot:7b}].tag
data modify block 0 52 -1 Items[{Slot:8b}].tag set from entity @s Inventory[{Slot:8b}].tag
data modify block 0 52 -1 Items[{Slot:18b}].tag set from entity @s Inventory[{Slot:103b}].tag
data modify block 0 52 -1 Items[{Slot:19b}].tag set from entity @s Inventory[{Slot:102b}].tag
data modify block 0 52 -1 Items[{Slot:20b}].tag set from entity @s Inventory[{Slot:101b}].tag
data modify block 0 52 -1 Items[{Slot:21b}].tag set from entity @s Inventory[{Slot:100b}].tag
data modify block 0 52 -1 Items[{Slot:26b}].tag set from entity @s Inventory[{Slot:-106b}].tag

# Remove barrier placeholders. 

data remove block 0 52 -1 Items[{id:"minecraft:barrier"}]
data remove block -1 52 -1 Items[{id:"minecraft:barrier"}]

# Clear player's inventory. 

clear @s
