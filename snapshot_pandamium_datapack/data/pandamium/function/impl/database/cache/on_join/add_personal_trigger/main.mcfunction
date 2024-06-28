# arguments: id, alias, trigger, type, target_selector

$function pandamium:impl/dynamic_triggers/add_alias/main {alias:"$(alias)",trigger_name:"$(trigger)",type:"$(type)"}
$function pandamium:impl/dynamic_triggers/add_alias_target/main {alias:"$(alias)",trigger_name:"$(trigger)",target_selector:"$(target_selector)",trigger_value:$(id),info:{}}
$data modify storage pandamium:cache online_players[-1].dynamic_triggers append value {alias:"$(alias)"}
data modify storage pandamium:cache online_players[-1].dynamic_triggers[-1].uuid set from storage pandamium.dynamic_triggers:io newest_alias_target_uuid
