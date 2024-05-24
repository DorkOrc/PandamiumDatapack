#{
#	action: "reset_dynamic_triggers.per_name",
#	target: SELECTOR_STRING,
#	names: [STRING, ...]
#}

$execute unless entity $(target) run return 0
$execute unless score $(target) optn.disable_dynamic_triggers.tpa_names matches 1.. unless score $(target) optn.disable_dynamic_triggers.punishments matches 1.. unless score $(target) optn.disable_dynamic_triggers.player_info matches 1.. run return 0

data modify storage pandamium:templates macro.username.username set from storage pandamium:queue selected.entry.names[-1]
$execute as $(target) run function pandamium:impl/queue/actions/reset_dynamic_triggers.per_name/with_username with storage pandamium:templates macro.username

data remove storage pandamium:queue selected.entry.names[-1]
execute store result storage pandamium:queue selected.entry.meta.value int -1 if data storage pandamium:queue selected.entry.names[]
execute if data storage pandamium:queue selected.entry.names[0] run return run function pandamium:impl/queue/utils/continue
