# arguments: type

$execute unless data storage pandamium.db:$(type) entries run return fail

$data modify storage pandamium.db.$(type):data {} merge from storage pandamium.db:$(type) {}
$data remove storage pandamium.db.$(type):data selected
$data modify storage pandamium.db.$(type):io selected set from storage pandamium.db:$(type) selected

$data remove storage pandamium.db:$(type) entries
$data remove storage pandamium.db:$(type) selected
$data remove storage pandamium.db:$(type) arguments
$data remove storage pandamium.db:$(type) id_indexes
$data remove storage pandamium.db:$(type) uuid_indexes
$data remove storage pandamium.db:$(type) username_indexes
$data remove storage pandamium.db:$(type) online_players
$data remove storage pandamium.db:$(type) last_click_event_id
$data remove storage pandamium.db:$(type) click_event_id_indexes
$data remove storage pandamium.db:$(type) region_indexes
$data remove storage pandamium.db:$(type) mail_id_indexes
$data remove storage pandamium.db:$(type) server_outbox
$data remove storage pandamium.db:$(type) last_mail_id
$data remove storage pandamium.db:$(type) last_stored_item_id
$data remove storage pandamium.db:$(type) last_container_x
$data remove storage pandamium.db:$(type) last_container_z
$data remove storage pandamium.db:$(type) last_container_y
$data remove storage pandamium.db:$(type) stored_item_id_indexes
$data remove storage pandamium.db:$(type) last_container_slot

# announce
$tellraw @a[scores={send_extra_debug_info=2..}] {"color":"gray","italic":true,"text":"[Pandamium: Migrated [$(type)] database to new file]"}
