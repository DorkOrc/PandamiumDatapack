# arguments: id, index

function pandamium:triggers/mail/print_inbox_outbox_menu/loop_logic with storage pandamium:templates macro.id__index

$data remove storage pandamium:temp mail_ids[$(index)]
$execute if data storage pandamium:temp mail_ids[$(index)] run function pandamium:triggers/mail/print_inbox_outbox_menu/loop with storage pandamium:templates macro.id__index
