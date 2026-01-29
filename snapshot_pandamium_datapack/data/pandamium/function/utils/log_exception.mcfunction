# arguments: args

$data modify storage pandamium:local functions."pandamium:utils/log".args set value $(args)
execute unless data storage pandamium:local functions."pandamium:utils/log".args.function run return fail

execute if data storage pandamium:local functions."pandamium:utils/log".args.message run data modify storage do:io input set value ["[Pandamium] An exception occurred [",{storage:"pandamium:local",nbt:'functions."pandamium:utils/log".args.function',interpret:true},"]: ",{storage:"pandamium:local",nbt:'functions."pandamium:utils/log".args.message',interpret:true}]
execute unless data storage pandamium:local functions."pandamium:utils/log".args.message run data modify storage do:io input set value ["[Pandamium] An exception occurred [",{storage:"pandamium:local",nbt:'functions."pandamium:utils/log".args.function',interpret:true},"]"]
function do:text/flatten
execute in pandamium:staff_world run data modify block 7 0 0 message set from storage do:io output
execute in pandamium:staff_world run setblock 7 0 1 air
execute in pandamium:staff_world run setblock 7 0 1 redstone_block
execute in pandamium:staff_world run setblock 7 0 0 test_block[mode=log]{message:"[Pandamium] n/a",mode:"log",powered:0b} strict

execute if data storage pandamium:local functions."pandamium:utils/log".args.message if data storage pandamium:local functions."pandamium:utils/log".args{tell_online:true} run tellraw @a[scores={send_extra_debug_info=2..}] [{color:"gray",italic:true,text:"[Pandamium: An exception occurred ["},{color:"yellow",storage:"pandamium:local",nbt:'functions."pandamium:utils/log".args.function',interpret:true},"]: ",{color:"red",storage:"pandamium:local",nbt:'functions."pandamium:utils/log".args.message',interpret:true},"]"]
execute unless data storage pandamium:local functions."pandamium:utils/log".args.message if data storage pandamium:local functions."pandamium:utils/log".args{tell_online:true} run tellraw @a[scores={send_extra_debug_info=2..}] [{color:"gray",italic:true,text:"[Pandamium: An exception occurred ["},{color:"yellow",storage:"pandamium:local",nbt:'functions."pandamium:utils/log".args.function',interpret:true},"]]"]

execute if data storage pandamium:local functions."pandamium:utils/log".args{return:"fail"} run return fail
execute if data storage pandamium:local functions."pandamium:utils/log".args.return run return run data get storage pandamium:local functions."pandamium:utils/log".args.return
return fail
