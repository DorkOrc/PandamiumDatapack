# arguments: alias, user_id

$data modify storage pandamium:temp alias_entry.post_commands append value "execute as @a[predicate=pandamium:player/min_staff_perms/moderator,scores={optn.disable_dynamic_triggers.tp=0},predicate=!pandamium:player/is_jailed] unless score @s id matches $(user_id) run scoreboard players enable @s $(alias)"
return 1
