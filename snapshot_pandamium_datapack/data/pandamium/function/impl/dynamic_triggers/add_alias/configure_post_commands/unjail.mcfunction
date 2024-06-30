# arguments: alias, user_name

$data modify storage pandamium:temp alias_entry.post_commands append value "execute if score $(user_name) jailed matches 1.. run scoreboard players enable @a[scores={staff_perms=1..,optn.disable_dynamic_triggers.punishments=0}] $(alias)"
return 1
