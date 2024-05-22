$function pandamium:impl/database/players/on_join/new_entry/copy_homes_to_entry {index:"$(index)",username:"$(username)"}

$tellraw @a[scores={send_extra_debug_info=2..}] {"text":"[PandaDB: New [players] entry for $(username) at index $(index)]","color":"gray","italic":true}
