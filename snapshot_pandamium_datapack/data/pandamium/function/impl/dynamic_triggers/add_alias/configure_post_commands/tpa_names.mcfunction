# arguments: alias, user_id, user_name

$data modify storage pandamium:temp alias_entry.post_commands append value 'execute unless score $(user_name) disable_tpa_requests matches 1 as @a[scores={optn.disable_dynamic_triggers.tpa_names=0}] unless score @s id matches $(user_id) unless predicate [{condition:"entity_scores",entity:"this",scores:{gameplay_rank:0}},{condition:"value_check",value:{type:"score",target:{type:"fixed",name:"$(user_name)"},score:"disable_tpa_requests"},range:2}] run scoreboard players enable @s $(alias)'
return 1
