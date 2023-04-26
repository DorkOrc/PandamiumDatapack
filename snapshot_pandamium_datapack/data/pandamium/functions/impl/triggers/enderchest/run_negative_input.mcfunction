scoreboard players set <target_exists> variable 0
scoreboard players operation <target_id> variable = @s selected_player
execute as @a if score @s id = <target_id> variable store success score <target_exists> variable run tag @s add target
execute if score <target_exists> variable matches 0 store success score <returned> variable run tellraw @s [{"text":"[Containers]","color":"dark_red"},{"text":" You have not selected a player or the player you have selected is offline!","color":"red"}]

data remove storage pandamium:containers inspect.item
data remove storage pandamium:containers items

scoreboard players set <slot> variable -1
scoreboard players operation <slot> variable -= @s enderchest

execute if score <slot> variable matches 0 run data modify storage pandamium:containers inspect.item set from entity @p[tag=target] EnderItems[{Slot:0b}]
execute if score <slot> variable matches 1 run data modify storage pandamium:containers inspect.item set from entity @p[tag=target] EnderItems[{Slot:1b}]
execute if score <slot> variable matches 2 run data modify storage pandamium:containers inspect.item set from entity @p[tag=target] EnderItems[{Slot:2b}]
execute if score <slot> variable matches 3 run data modify storage pandamium:containers inspect.item set from entity @p[tag=target] EnderItems[{Slot:3b}]
execute if score <slot> variable matches 4 run data modify storage pandamium:containers inspect.item set from entity @p[tag=target] EnderItems[{Slot:4b}]
execute if score <slot> variable matches 5 run data modify storage pandamium:containers inspect.item set from entity @p[tag=target] EnderItems[{Slot:5b}]
execute if score <slot> variable matches 6 run data modify storage pandamium:containers inspect.item set from entity @p[tag=target] EnderItems[{Slot:6b}]
execute if score <slot> variable matches 7 run data modify storage pandamium:containers inspect.item set from entity @p[tag=target] EnderItems[{Slot:7b}]
execute if score <slot> variable matches 8 run data modify storage pandamium:containers inspect.item set from entity @p[tag=target] EnderItems[{Slot:8b}]
execute if score <slot> variable matches 9 run data modify storage pandamium:containers inspect.item set from entity @p[tag=target] EnderItems[{Slot:9b}]
execute if score <slot> variable matches 10 run data modify storage pandamium:containers inspect.item set from entity @p[tag=target] EnderItems[{Slot:10b}]
execute if score <slot> variable matches 11 run data modify storage pandamium:containers inspect.item set from entity @p[tag=target] EnderItems[{Slot:11b}]
execute if score <slot> variable matches 12 run data modify storage pandamium:containers inspect.item set from entity @p[tag=target] EnderItems[{Slot:12b}]
execute if score <slot> variable matches 13 run data modify storage pandamium:containers inspect.item set from entity @p[tag=target] EnderItems[{Slot:13b}]
execute if score <slot> variable matches 14 run data modify storage pandamium:containers inspect.item set from entity @p[tag=target] EnderItems[{Slot:14b}]
execute if score <slot> variable matches 15 run data modify storage pandamium:containers inspect.item set from entity @p[tag=target] EnderItems[{Slot:15b}]
execute if score <slot> variable matches 16 run data modify storage pandamium:containers inspect.item set from entity @p[tag=target] EnderItems[{Slot:16b}]
execute if score <slot> variable matches 17 run data modify storage pandamium:containers inspect.item set from entity @p[tag=target] EnderItems[{Slot:17b}]
execute if score <slot> variable matches 18 run data modify storage pandamium:containers inspect.item set from entity @p[tag=target] EnderItems[{Slot:18b}]
execute if score <slot> variable matches 19 run data modify storage pandamium:containers inspect.item set from entity @p[tag=target] EnderItems[{Slot:19b}]
execute if score <slot> variable matches 20 run data modify storage pandamium:containers inspect.item set from entity @p[tag=target] EnderItems[{Slot:20b}]
execute if score <slot> variable matches 21 run data modify storage pandamium:containers inspect.item set from entity @p[tag=target] EnderItems[{Slot:21b}]
execute if score <slot> variable matches 22 run data modify storage pandamium:containers inspect.item set from entity @p[tag=target] EnderItems[{Slot:22b}]
execute if score <slot> variable matches 23 run data modify storage pandamium:containers inspect.item set from entity @p[tag=target] EnderItems[{Slot:23b}]
execute if score <slot> variable matches 24 run data modify storage pandamium:containers inspect.item set from entity @p[tag=target] EnderItems[{Slot:24b}]
execute if score <slot> variable matches 25 run data modify storage pandamium:containers inspect.item set from entity @p[tag=target] EnderItems[{Slot:25b}]
execute if score <slot> variable matches 26 run data modify storage pandamium:containers inspect.item set from entity @p[tag=target] EnderItems[{Slot:26b}]

data remove storage pandamium:containers source
data modify storage pandamium:containers inspect.subheader set value '[{"text":"","color":"yellow"},{"text":"Player: ","bold":true},{"selector":"@p[tag=target]"},{"text":"\\nEnder Chest Slot: ","color":"aqua","bold":true},{"score":{"name":"<slot>","objective":"variable"},"color":"gold"}]'
execute if score <returned> variable matches 0 run function pandamium:containers/run/inspect/main
execute if score <can_inspect> variable matches 0 run tellraw @s [{"text":"[Containers]","color":"dark_red"},{"text":" You cannot inspect that slot!","color":"red"}]
