$execute unless data storage pandamium.db.players:io selected.entry.data.homes.$(home) run tellraw @s [{"text":"","color":"gold"},{"text":"Home $(home): ","bold":true},{"text":"Not Set","color":"gray"}]
$execute if data storage pandamium.db.players:io selected.entry.data.homes.$(home) run tellraw @s [{"text":"","color":"gold"},{"text":"[→]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger homes set $(user_and_home_id)"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"blue"},{"storage":"pandamium:temp","nbt":"target","interpret":true},"'s ",{"text":"Home $(home)","bold":true}]}}," ",{"storage":"pandamium:temp","nbt":"home_name","interpret":true,"clickEvent":{"action":"run_command","value":"/trigger homes set $(user_and_home_id)"}}," ",{"text":"ℹ","color":"blue","hoverEvent":{"action":"show_text","contents":[{"storage":"pandamium.db.players:io","nbt":"selected.entry.data.homes.$(home).xyzd[0]","color":"yellow"}," ",{"storage":"pandamium.db.players:io","nbt":"selected.entry.data.homes.$(home).xyzd[1]"}," ",{"storage":"pandamium.db.players:io","nbt":"selected.entry.data.homes.$(home).xyzd[2]"}," in ",{"nbt":"dimension_name","storage":"pandamium:temp"},{"text":"\nHome $(home)","color":"dark_gray"},{"storage":"pandamium:temp","nbt":"home_plain_name_info","interpret":true},"\n\n",{"storage":"pandamium:temp","nbt":"date_set_tooltip","interpret":true}]}}]
