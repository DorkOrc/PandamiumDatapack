# arguments: target, source, announce
# inputs:
# - variable args target
# - variable args source
# - variable args announce

$data modify storage pandamium:local functions."pandamium:impl/punishment/ban/*" set value $(args)

execute unless data storage pandamium:local functions."pandamium:impl/punishment/ban/*".target run return run function pandamium:utils/log_exception {args:{function:"pandamium:player/punishment/ban",message:'Missing argument: target'}}
execute unless data storage pandamium:local functions."pandamium:impl/punishment/ban/*".source run return run function pandamium:utils/log_exception {args:{function:"pandamium:player/punishment/ban",message:'Missing argument: source'}}
execute unless data storage pandamium:local functions."pandamium:impl/punishment/ban/*".announce run return run function pandamium:utils/log_exception {args:{function:"pandamium:player/punishment/ban",message:'Missing argument: announce'}}
execute unless data storage pandamium:local functions."pandamium:impl/punishment/ban/*"{announce:true} unless data storage pandamium:local functions."pandamium:impl/punishment/ban/*"{announce:false} run return run function pandamium:utils/log_exception {args:{function:"pandamium:player/punishment/ban",message:['Invalid argument: announce=',{storage:"pandamium:local",nbt:'functions."pandamium:impl/punishment/ban/*".announce'}]}}

return run function pandamium:impl/punishment/ban/main
