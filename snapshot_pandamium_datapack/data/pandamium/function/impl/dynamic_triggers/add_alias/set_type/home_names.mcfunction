# arguments: alias

$data modify storage pandamium:temp alias_entry.post_commands append value "scoreboard players enable @a[scores={dynamic_trigger_enabled.$(alias)=1,optn.disable_dynamic_triggers.home_names=0}] $(alias)"
return 1
