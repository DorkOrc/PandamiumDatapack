summon falling_block 0 0 0 {NoGravity:1b,DropItem:0b,Time:1,Tags:["map_specific.fake_block","map_specific.new_fake_block"]}
data modify entity @e[x=0,type=falling_block,tag=map_specific.new_fake_block,limit=1] BlockState set from entity @s ArmorItems[0].tag.fake_block.BlockState
tp @e[x=0,type=falling_block,tag=map_specific.new_fake_block,limit=1] @s
tag @e[type=falling_block,tag=map_specific.new_fake_block,limit=1] remove map_specific.new_fake_block
