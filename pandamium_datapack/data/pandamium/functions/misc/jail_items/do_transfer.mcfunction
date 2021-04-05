execute unless block 7 64 2 chest run setblock 7 64 2 chest[facing=west,type=right]
execute unless block 7 64 3 chest run setblock 7 64 3 chest[facing=west,type=left]
summon armor_stand 7 64 2 {Tags:["jail_items.chest"],NoGravity:1b,Invisible:1b,Marker:1b}
scoreboard players set <chest_num> variable 0
execute as @e[x=0,type=armor_stand,tag=jail_items.chest] run function pandamium:misc/jail_items/find_next_free_chest

data modify storage pandamium:jail_items Item.tag.jail_item set value 1b
execute unless data storage pandamium:jail_items Item.tag.display run data modify storage pandamium:jail_items Item.tag.jail_item set value 2b
data modify storage pandamium:jail_items Item.tag.display.Lore set value []
data modify storage pandamium:jail_items Item.tag.display.Lore append from block 7 64 -6 Text1
data modify storage pandamium:jail_items Item.tag.display.Lore append from block 7 64 -6 Text2

execute at @e[x=0,type=armor_stand,tag=jail_items.chest] run function pandamium:misc/jail_items/insert_item

kill @e[x=0,type=armor_stand,tag=jail_items.chest]
kill @s
