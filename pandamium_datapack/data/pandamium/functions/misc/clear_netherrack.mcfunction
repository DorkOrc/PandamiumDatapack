execute in minecraft:the_nether as @e[x=0,type=item,nbt=!{Item:{tag:{}}}] unless entity @s[nbt=!{"Item":{"id":"minecraft:ender_pearl"}},nbt=!{"Item":{"id":"minecraft:rotten_flesh"}},nbt=!{"Item":{"id":"minecraft:netherrack"}}] run kill

schedule function pandamium:misc/clear_netherrack 10s
