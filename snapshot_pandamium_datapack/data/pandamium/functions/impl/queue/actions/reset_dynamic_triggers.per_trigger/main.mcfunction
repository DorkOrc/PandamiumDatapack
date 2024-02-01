#{
#	action: "reset_dynamic_triggers.per_trigger",
#	target: SELECTOR_STRING,
#	triggers: [STRING, ...]
#}

$execute unless entity $(target) run return 0

data modify storage pandamium:templates macro.trigger_name.trigger_name set from storage pandamium:queue selected.entry.triggers[-1]
data remove storage pandamium:queue selected.entry.triggers[-1]
$execute as $(target) run function pandamium:impl/queue/actions/reset_dynamic_triggers.per_trigger/with_trigger_name with storage pandamium:templates macro.trigger_name

execute if data storage pandamium:queue selected.entry.triggers[0] run return run function pandamium:impl/queue/utils/continue
