execute unless data storage pandamium.db:mail selected.entry run return fail
execute if data storage pandamium.db:mail selected.entry{sent:1b} run return fail

#data modify storage pandamium.db:mail selected.entry.sender.type set value "player"
data remove storage pandamium.db:mail selected.entry.sender.type

return 1
