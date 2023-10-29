# arguments: old_username, new_username

$data remove storage pandamium.db:players username_indexes.$(old_username)
$data modify storage pandamium.db:players username_indexes.$(new_username) set value $(index)
$function pandamium:impl/transfer_player_data/main {old:"$(old_username)",new:"$(new_username)"}

$function pandamium:impl/auto_actions/actions/name_change/log {old:"$(old_username)",new:"$(new_username)"}

$tellraw @a[scores={send_extra_debug_info=1..}] [{"text":"[Database: Automatically transferred scores and database info/indexes for ","color":"gray","italic":true},{"text":"$(old_username)","bold":true}," to ",{"text":"$(new_username)","bold":true},"]"]
