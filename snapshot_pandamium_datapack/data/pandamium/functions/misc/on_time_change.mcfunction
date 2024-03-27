# update hour id
execute unless function pandamium:misc/update_hour_id run return fail
tellraw @a[scores={send_extra_debug_info=2..}] [{"text":"[Pandamium: Updated datetime (and hour id): ","color":"gray","italic":true},{"score":{"name":"<day>","objective":"global"}},"/",{"score":{"name":"<month>","objective":"global"}},"/",{"score":{"name":"<year>","objective":"global"}},", ",{"score":{"name":"<hour>","objective":"global"}},"h]"]

# on month start
execute if score <day> global matches 1 if score <hour> global matches 0 run function pandamium:misc/on_month_start

# event dates
execute if score <month> global matches 12 if score <day> global matches 25 if score <hour> global matches 0 run advancement grant @a only pandamium:pandamium/events/christmas

# custom effects
execute as @a[scores={custom_effects.listen_for.time_change=1}] run function pandamium:impl/custom_effects/trigger/main {trigger:"time_change"}

return 1
