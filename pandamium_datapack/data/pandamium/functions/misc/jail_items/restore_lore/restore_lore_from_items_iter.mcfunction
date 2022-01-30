execute store success score <is_jail_item> variable if data storage pandamium:temp ItemsIn[0].tag.pandamium{jail_item:1b}

execute if score <is_jail_item> variable matches 1 run data remove storage pandamium:temp ItemsIn[0].tag.display.Lore
execute if score <is_jail_item> variable matches 1 if data storage pandamium:temp ItemsIn[0].tag.pandamium.stored_lore run data modify storage pandamium:temp ItemsIn[0].tag.display.Lore set from storage pandamium:temp ItemsIn[0].tag.pandamium.stored_lore
execute if score <is_jail_item> variable matches 1 run data remove storage pandamium:temp ItemsIn[0].tag.pandamium.stored_lore
execute if score <is_jail_item> variable matches 1 run data remove storage pandamium:temp ItemsIn[0].tag.pandamium.jail_item
execute if score <is_jail_item> variable matches 1 store result score <len> variable run data get storage pandamium:temp ItemsIn[0].tag.display
execute if score <is_jail_item> variable matches 1 if score <len> variable matches 0 run data remove storage pandamium:temp ItemsIn[0].tag.display
execute if score <is_jail_item> variable matches 1 store result score <len> variable run data get storage pandamium:temp ItemsIn[0].tag.pandamium
execute if score <is_jail_item> variable matches 1 if score <len> variable matches 0 run data remove storage pandamium:temp ItemsIn[0].tag.pandamium
execute if score <is_jail_item> variable matches 1 store result score <len> variable run data get storage pandamium:temp ItemsIn[0].tag
execute if score <is_jail_item> variable matches 1 if score <len> variable matches 0 run data remove storage pandamium:temp ItemsIn[0].tag

data modify storage pandamium:temp ItemsOut append from storage pandamium:temp ItemsIn[0]
data remove storage pandamium:temp ItemsIn[0]
execute if data storage pandamium:temp ItemsIn[0] run function pandamium:misc/jail_items/restore_lore/restore_lore_from_items_iter
