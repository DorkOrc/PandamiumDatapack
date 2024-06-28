# arguments: alias, user_id

$data modify storage pandamium:temp alias_entry.post_commands append value 'execute as @a[scores={optn.disable_dynamic_triggers.tpa_names=0}] unless score @s id matches $(user_id) run scoreboard players enable @s $(alias)'
return 1
