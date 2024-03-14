execute in the_nether run kill @e[x=0,type=item,predicate=pandamium:contents_slot/netherrack,nbt=!{Item:{components:{}}}]
execute in the_end run kill @e[x=0,type=item,predicate=pandamium:contents_slot/ender_pearl,nbt=!{Item:{components:{}}}]

schedule function pandamium:impl/item_clear/netherrack_and_ender_pearls 10s
