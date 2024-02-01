#{
#	action: "reset_dynamic_triggers.per_trigger",
#	target: SELECTOR_STRING,
#	triggers: [STRING, ...]
#}

$execute unless entity $(username) run return 0
$execute unless score $(username) optn.disable_dynamic_triggers.home_names matches 1.. run return 0

data modify storage pandamium:templates macro.trigger_name.trigger_name set from storage pandamium:queue selected.entry.triggers[0]
data remove storage pandamium:queue selected.entry.triggers[0]
$execute as $(username) run function pandamium:impl/queue/actions/reset_dynamic_triggers.per_trigger/with_trigger_name with storage pandamium:templates macro.username

execute if data storage pandamium:queue selected.entry.triggers[0] run return run function pandamium:impl/queue/utils/continue
