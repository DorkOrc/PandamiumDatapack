#execute unless data storage pandamium:remove_nbt Items[-2][-1].tag.Items[] unless data storage pandamium:remove_nbt Items[-2][-1].tag.BlockEntityTag.Items[] run tellraw @a {"nbt":"Items[-2][-1]","storage":"pandamium:remove_nbt"}
execute store success score removed_nbt temp_1 run data remove storage pandamium:remove_nbt Items[-2][-1].tag.BlockEntityTag.Bees[].EntityData.Pos
scoreboard players operation nbt_removed_in_total temp_1 += removed_nbt temp_1
execute store success score removed_nbt temp_1 run data remove storage pandamium:remove_nbt Items[-2][-1].tag.BlockEntityTag.Bees[].EntityData.HivePos
scoreboard players operation nbt_removed_in_total temp_1 += removed_nbt temp_1
execute store success score removed_nbt temp_1 run data remove storage pandamium:remove_nbt Items[-2][-1].tag.Decorations[]
scoreboard players operation nbt_removed_in_total temp_1 += removed_nbt temp_1
