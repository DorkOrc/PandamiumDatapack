# arguments: alias

$data modify storage pandamium:temp alias_entry.post_commands append value "scoreboard players enable @a[scores={staff_perms=1..,optn.disable_dynamic_triggers.player_info=0}] $(alias)"
return 1
