# arguments: home_slot, plain_name, user_name, user_id

$function pandamium:impl/dynamic_triggers/add_alias/main {alias:"home.$(plain_name)",trigger_name:"home",config:"home_names"}
$function pandamium:impl/dynamic_triggers/add_alias_target/main {alias:"home.$(plain_name)",trigger_name:"home",target_selector:"$(user_name)",trigger_value:$(home_slot),info:{}}
$data modify storage pandamium:cache online_players[{id:$(user_id)}].dynamic_triggers append value {alias:"home.$(plain_name)",home_slot:$(home_slot)}
$data modify storage pandamium:cache online_players[{id:$(user_id)}].dynamic_triggers[-1].uuid set from storage pandamium.dynamic_triggers:io newest_alias_target_uuid
$scoreboard players set @s dynamic_trigger_enabled.home.$(plain_name) 1
