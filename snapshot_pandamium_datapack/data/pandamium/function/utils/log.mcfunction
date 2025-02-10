# arguments: args

$data modify storage pandamium:local functions."pandamium:utils/log".args set value $(args)
execute unless data storage pandamium:local functions."pandamium:utils/log".args.message run return fail

data modify storage pandamium:text input set value ["[Pandamium] ",{storage:"pandamium:local",nbt:'functions."pandamium:utils/log".args.message',interpret:true}]
execute if data storage pandamium:local functions."pandamium:utils/log".args{large:true} run data modify storage pandamium:text input set value {storage:"pandamium:local",nbt:'functions."pandamium:utils/log".args.message',interpret:true}
function pandamium:utils/text/flatten

execute in pandamium:staff_world run data modify block 7 0 0 message set from storage pandamium:text output
execute in pandamium:staff_world run setblock 7 0 1 air
execute in pandamium:staff_world run setblock 7 0 1 redstone_block
execute if data storage pandamium:local functions."pandamium:utils/log".args{large:true} in pandamium:staff_world run setblock 7 0 0 test_block[mode=log]{message:"[Pandamium] n/a",mode:"log",powered:0b} strict
