#{
#	action: "reset_dynamic_triggers.per_name",
#	target: SELECTOR_STRING,
#	names: [STRING, ...]
#}

$execute unless entity $(target) run return 0
$execute unless score $(target) optn.disable_dynamic_triggers.tpa_names matches 1.. unless score $(target) optn.disable_dynamic_triggers.staff matches 1.. run return 0

data modify storage pandamium:templates macro.username.username set from storage pandamium:queue selected.entry.names[0]
data remove storage pandamium:queue selected.entry.names[0]
$execute as $(target) run function pandamium:impl/queue/actions/reset_dynamic_triggers.per_name/with_username with storage pandamium:templates macro.username

execute if data storage pandamium:queue selected.entry.names[0] run return run function pandamium:impl/queue/utils/continue
