# arguments: target, source, announce
# inputs:
# - variable args target
# - variable args source
# - variable args announce

$data modify storage pandamium:local functions."pandamium:impl/punishment/unjail/*" set value $(args)

execute unless data storage pandamium:local functions."pandamium:impl/punishment/unjail/*".target run return run function pandamium:utils/log_exception {args:{function:"pandamium:player/punishment/unjail",message:'Missing argument: target'}}
execute unless data storage pandamium:local functions."pandamium:impl/punishment/unjail/*".source run return run function pandamium:utils/log_exception {args:{function:"pandamium:player/punishment/unjail",message:'Missing argument: source'}}
execute unless data storage pandamium:local functions."pandamium:impl/punishment/unjail/*".announce run return run function pandamium:utils/log_exception {args:{function:"pandamium:player/punishment/unjail",message:'Missing argument: announce'}}
execute unless data storage pandamium:local functions."pandamium:impl/punishment/unjail/*"{announce:true} unless data storage pandamium:local functions."pandamium:impl/punishment/unjail/*"{announce:false} run return run function pandamium:utils/log_exception {args:{function:"pandamium:player/punishment/unjail",message:['Invalid argument: announce=',{storage:"pandamium:local",nbt:'functions."pandamium:impl/punishment/unjail/*".announce'}]}}

return run function pandamium:impl/punishment/unjail/main
