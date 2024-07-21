# arguments: alias, user_id, user_name

$data modify storage pandamium:temp alias_entry.post_commands append value 'execute unless score $(user_name) optn.disable_receiving_mail matches 1 as @a[scores={optn.enable_dynamic_triggers.mail_names=1},predicate=!pandamium:player/is_jailed] unless score @s id matches $(user_id) unless predicate [{condition:"entity_scores",entity:"this",scores:{gameplay_rank:0}},{condition:"value_check",value:{type:"score",target:{type:"fixed",name:"$(user_name)"},score:"optn.disable_receiving_mail"},range:2}] run scoreboard players enable @s $(alias)'
return 1
