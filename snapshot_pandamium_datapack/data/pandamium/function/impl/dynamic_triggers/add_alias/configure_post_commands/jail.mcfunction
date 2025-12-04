# arguments: alias, user_name

$data modify storage pandamium:temp alias_entry.post_commands append value "execute unless score $(user_name) jailed matches 1.. run scoreboard players enable @a[predicate=pandamium:player/min_staff_perms/helper,scores={optn.disable_dynamic_triggers.punishments=0}] $(alias)"
return 1
