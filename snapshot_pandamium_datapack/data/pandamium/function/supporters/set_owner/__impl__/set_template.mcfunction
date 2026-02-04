# arguments: patreon_id, _

$data modify storage pandamium:local functions."pandamium:supporters/set_owner/*".dialog.yes.action.template set value 'function pandamium:supporters/set_owner/input {patreon_id:"$(patreon_id)",username:"$$(_)(username)"}'
