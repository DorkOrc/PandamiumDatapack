function pandamium:misc/remove_nbt/remove
#bundle
execute if data storage pandamium:remove_nbt Items[-2][-1].tag.Items[] run function pandamium:misc/remove_nbt/items/main_
