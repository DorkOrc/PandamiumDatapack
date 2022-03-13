execute in the_nether as @e[x=0,type=item,nbt=!{Item:{tag:{}}}] if entity @s[nbt={"Item":{"id":"minecraft:netherrack"}}] run kill
execute in the_end as @e[x=0,type=item,nbt=!{Item:{tag:{}}}] if entity @s[nbt={"Item":{"id":"minecraft:ender_pearl"}}] run kill

schedule function pandamium:misc/item_clear/clear_netherrack 10s
