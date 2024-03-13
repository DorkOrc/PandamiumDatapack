execute in the_nether as @e[x=0,type=item,nbt={Item:{id:"minecraft:netherrack"}},nbt=!{Item:{components:{}}}] run kill
execute in the_end as @e[x=0,type=item,nbt={Item:{id:"minecraft:ender_pearl"}},nbt=!{Item:{components:{}}}] run kill

schedule function pandamium:impl/item_clear/netherrack_and_ender_pearls 10s
