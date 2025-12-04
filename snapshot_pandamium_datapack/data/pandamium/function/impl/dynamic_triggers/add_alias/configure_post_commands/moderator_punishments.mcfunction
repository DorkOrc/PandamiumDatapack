# arguments: alias

$data modify storage pandamium:temp alias_entry.post_commands append value "scoreboard players enable @a[predicate=pandamium:player/min_staff_perms/moderator,scores={optn.disable_dynamic_triggers.punishments=0}] $(alias)"
return 1
