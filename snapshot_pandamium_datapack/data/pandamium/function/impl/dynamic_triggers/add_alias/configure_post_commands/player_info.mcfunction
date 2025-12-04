# arguments: alias

$data modify storage pandamium:temp alias_entry.post_commands append value "scoreboard players enable @a[predicate=pandamium:player/min_staff_perms/helper,scores={optn.disable_dynamic_triggers.player_info=0}] $(alias)"
return 1
