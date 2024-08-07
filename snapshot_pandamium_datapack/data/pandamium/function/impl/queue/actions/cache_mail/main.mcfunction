#{
#	action: "cache_mail",
#	mail: [
#       {
#           mail_id: INT
#       }
#   ],
#	user_id & id: INT
#}

$execute unless entity @a[scores={id=$(user_id)},limit=1] run return 0
execute if data storage pandamium:queue actions_ran."cache_mail" run return run function pandamium:impl/queue/utils/continue_pending

function pandamium:utils/database/player_cache/load/from_id with storage pandamium:queue selected.entry

# process top entry

execute if data storage pandamium:queue selected.entry.mail[0] run function pandamium:impl/queue/actions/cache_mail/process_top_entry with storage pandamium:queue selected.entry
execute if data storage pandamium:queue selected.entry.mail[0] run function pandamium:impl/queue/actions/cache_mail/process_top_entry with storage pandamium:queue selected.entry
execute if data storage pandamium:queue selected.entry.mail[0] run function pandamium:impl/queue/actions/cache_mail/process_top_entry with storage pandamium:queue selected.entry
execute if data storage pandamium:queue selected.entry.mail[0] run function pandamium:impl/queue/actions/cache_mail/process_top_entry with storage pandamium:queue selected.entry
execute if data storage pandamium:queue selected.entry.mail[0] run function pandamium:impl/queue/actions/cache_mail/process_top_entry with storage pandamium:queue selected.entry

function pandamium:utils/database/player_cache/save

# continue
execute store result storage pandamium:queue selected.entry.meta.value int -1 if data storage pandamium:queue selected.entry.mail[]
execute if data storage pandamium:queue selected.entry.mail[0] run return run function pandamium:impl/queue/utils/continue

# end
$scoreboard players set @a[scores={id=$(user_id)},limit=1] mail_data.inbox_cached 1
#$tellraw @a[scores={send_extra_debug_info=2..}] {"color":"gray","italic":true,"text":"[Pandamium: Finished caching ","extra":[{"selector":"@a[scores={id=$(user_id)},limit=1]"},"'s mail]"]}

$execute as @a[scores={id=$(user_id),mail_data.unread_mails=1},limit=1] run tellraw @s [{"text":"[Mail]","color":"blue"},[{"text":" You have ","color":"green"},{"text":"1","color":"aqua"}," unread mail! ",{"text":"[View your Inbox]","color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Click to see ","color":"gold"},{"text":"Your Inbox","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger mail set 1000102"}}]]
$execute as @a[scores={id=$(user_id),mail_data.unread_mails=2..},limit=1] run tellraw @s [{"text":"[Mail]","color":"blue"},[{"text":" You have ","color":"green"},{"score":{"name":"@s","objective":"mail_data.unread_mails"},"color":"aqua"}," unread mails! ",{"text":"[View your Inbox]","color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Click to see ","color":"gold"},{"text":"Your Inbox","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger mail set 1000102"}}]]
$execute as @a[scores={id=$(user_id),mail_data.unread_mails=1..},limit=1] at @s run playsound block.note_block.chime master @s
