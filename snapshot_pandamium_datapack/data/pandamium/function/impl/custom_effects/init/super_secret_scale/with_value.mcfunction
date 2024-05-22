# arguments: value

$data modify storage pandamium.db.players:io selected.entry.data.custom_effects[-1].data.attribute_modifiers[0].modifier set value "$(value) add_value"

$execute at @s anchored eyes positioned ^ ^ ^ if block ~ ~ ~ #pandamium:mobs_cannot_suffocate_in if block ~ ~$(value) ~ #pandamium:mobs_cannot_suffocate_in run return 1

function pandamium:impl/custom_effects/init/main
