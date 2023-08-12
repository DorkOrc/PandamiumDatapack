$function pandamium:impl/transfer_scores {old:"$(old_username)",new:"$(new_username)"}
$data remove storage pandamium.db:players username_indexes.$(old_username)
$data modify storage pandamium.db:players username_indexes.$(new_username) set value $(index)

$tellraw @a[scores={send_extra_debug_info=1}] [{"text":"[Database: Automatically transferred scores and database info/indexes for ","color":"gray","italic":true},{"text":"$(old_username)","bold":true}," to ",{"text":"$(new_username)","bold":true},"]"]
