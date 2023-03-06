data remove entity @s item.tag.pandamium.edit_item_frame
execute store result score <server_tags> variable run data get entity @s item.tag.pandamium
execute if score <server_tags> variable matches 0 run data remove entity @s item.tag.pandamium
execute store result score <server_tags> variable run data get entity @s item.tag
execute if score <server_tags> variable matches 0 run data remove entity @s item.tag
