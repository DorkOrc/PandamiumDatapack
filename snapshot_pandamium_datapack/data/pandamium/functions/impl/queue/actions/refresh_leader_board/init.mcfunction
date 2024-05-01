data modify storage pandamium:queue selected.entry.meta.name set value '["Refreshing ",{"color":"aqua","text":"[","extra":[{"storage":"pandamium:queue","nbt":"selected.entry.leader_board"},"]"]}]'

$function pandamium:impl/leaderboards/reset_without_backup {type:"$(leader_board)"}

data modify storage pandamium:queue selected.entry.names set value []
data modify storage pandamium:queue selected.entry.names append from storage pandamium.db.players:data entries[].username
execute store result storage pandamium:queue selected.entry.meta.max int 1 if data storage pandamium:queue selected.entry.names[]
data modify storage pandamium:queue selected.entry.next_name set from storage pandamium:queue selected.entry.names[-1]
