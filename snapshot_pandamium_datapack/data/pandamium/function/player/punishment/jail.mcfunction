# arguments: target, source, announce
# inputs:
# - variable args target
# - variable args source
# - variable args announce
# outputs:
# - score <total_items_taken> variable

scoreboard players set <total_items_taken> variable 0

$data modify storage pandamium:local functions."pandamium:impl/punishment/jail/*" set value $(args)

execute unless data storage pandamium:local functions."pandamium:impl/punishment/jail/*".target run return run function pandamium:utils/log_exception {args:{function:"pandamium:player/punishment/jail",message:'Missing argument: target'}}
execute unless data storage pandamium:local functions."pandamium:impl/punishment/jail/*".source run return run function pandamium:utils/log_exception {args:{function:"pandamium:player/punishment/jail",message:'Missing argument: source'}}
execute unless data storage pandamium:local functions."pandamium:impl/punishment/jail/*".announce run return run function pandamium:utils/log_exception {args:{function:"pandamium:player/punishment/jail",message:'Missing argument: announce'}}
execute unless data storage pandamium:local functions."pandamium:impl/punishment/jail/*"{announce:true} unless data storage pandamium:local functions."pandamium:impl/punishment/jail/*"{announce:false} run return run function pandamium:utils/log_exception {args:{function:"pandamium:player/punishment/jail",message:['Invalid argument: announce=',{storage:"pandamium:local",nbt:'functions."pandamium:impl/punishment/jail/*".announce',interpret:true}]}}

return run function pandamium:impl/punishment/jail/main
