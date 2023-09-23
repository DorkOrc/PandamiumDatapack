$function pandamium:impl/database/players/on_join/new_entry/copy_homes_to_entry {index:"$(index)",username:"$(username)"}

$tellraw @a[scores={send_extra_debug_info=1}] {"text":"[Database: New [pandamium.db:players] entry for $(username) at index $(index)]","color":"gray","italic":true}
