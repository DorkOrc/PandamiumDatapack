# arguments: args

execute unless entity @s[type=player] run return fail

$data modify storage pandamium:local functions."pandamium:misc/auto_jail" set value {args:$(args)}
data modify storage pandamium:local functions."pandamium:misc/auto_jail".reason set string storage pandamium:local functions."pandamium:misc/auto_jail".args.reason
execute unless data storage pandamium:local functions."pandamium:misc/auto_jail".reason run return fail

data modify storage pandamium:auto_actions reason set string storage pandamium:local functions."pandamium:misc/auto_jail".reason
function pandamium:impl/auto_actions/actions/auto_jail/main

return 1
