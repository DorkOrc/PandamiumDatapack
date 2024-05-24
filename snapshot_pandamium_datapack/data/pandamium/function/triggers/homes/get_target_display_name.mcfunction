# arguments: username

$execute store result score <target_is_online> variable if entity $(username)
$execute if score <target_is_online> variable matches 1 run data modify storage pandamium:temp target set value '{"selector":"$(username)"}'
execute if score <target_is_online> variable matches 0 run data modify storage pandamium:temp target set value '[{"storage":"pandamium.db.players:io","nbt":"selected.entry.username"}," (offline)"]'
