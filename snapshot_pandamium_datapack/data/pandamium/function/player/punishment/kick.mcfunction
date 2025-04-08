# arguments: target, source, announce
# inputs:
# - variable args target
# - variable args source
# - variable args announce

$data modify storage pandamium:local functions."pandamium:impl/punishment/kick/*" set value $(args)

execute unless data storage pandamium:local functions."pandamium:impl/punishment/kick/*".target run return run function pandamium:utils/log_exception {args:{function:"pandamium:player/punishment/kick",message:'Missing argument: target'}}
execute unless data storage pandamium:local functions."pandamium:impl/punishment/kick/*".source run return run function pandamium:utils/log_exception {args:{function:"pandamium:player/punishment/kick",message:'Missing argument: source'}}
execute unless data storage pandamium:local functions."pandamium:impl/punishment/kick/*".announce run return run function pandamium:utils/log_exception {args:{function:"pandamium:player/punishment/kick",message:'Missing argument: announce'}}
execute unless data storage pandamium:local functions."pandamium:impl/punishment/kick/*"{announce:true} unless data storage pandamium:local functions."pandamium:impl/punishment/kick/*"{announce:false} run return run function pandamium:utils/log_exception {args:{function:"pandamium:player/punishment/kick",message:['Invalid argument: announce=',{storage:"pandamium:local",nbt:'functions."pandamium:impl/punishment/kick/*".announce'}]}}

return run function pandamium:impl/punishment/kick/main
