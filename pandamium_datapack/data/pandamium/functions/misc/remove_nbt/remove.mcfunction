#uncomment to make it print all items in all bundles/shulker boxes (doesn't print items that contain items)
#execute unless data storage pandamium:remove_nbt Items[-2][-1].tag.Items[] unless data storage pandamium:remove_nbt Items[-2][-1].tag.BlockEntityTag.Items[] run tellraw @a {"nbt":"Items[-2][-1]","storage":"pandamium:remove_nbt"}
data remove storage pandamium:remove_nbt Items[-2][-1].tag.BlockEntityTag.Bees[].EntityData.Pos
data remove storage pandamium:remove_nbt Items[-2][-1].tag.BlockEntityTag.Bees[].EntityData.HivePos
data remove storage pandamium:remove_nbt Items[-2][-1].tag.Decorations[]
