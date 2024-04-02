# arguments: name

data remove storage pandamium.db.players:io selected.entry.data.custom_effects[-1]

$tellraw @a[scores={send_extra_debug_info=2..}] [{"text":"[Pandamium: Failed to add custom effect [$(name)] to ","color":"gray","italic":true},{"selector":"@s"},"]"]
return fail
