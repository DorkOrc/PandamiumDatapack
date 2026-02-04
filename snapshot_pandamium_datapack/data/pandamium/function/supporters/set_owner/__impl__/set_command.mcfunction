# arguments: patreon_id, username

$data modify storage pandamium:local functions."pandamium:supporters/set_owner/*".dialog.yes.action.command set value 'function pandamium:supporters/set_owner/confirm {patreon_id:"$(patreon_id)",username:"$(username)"}'
