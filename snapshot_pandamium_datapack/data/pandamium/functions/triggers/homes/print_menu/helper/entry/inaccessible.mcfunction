$execute store result score <dimension> variable run data get storage pandamium.db:players selected.entry.data.homes.$(home).xyzd[3]
function pandamium:utils/get/dimension_name/from_score

$data modify storage pandamium:temp home_name set value '{"text":"Home $(home)","bold":true}'
$execute if data storage pandamium.db:players selected.entry.data.homes.$(home).name run data modify storage pandamium:temp home_name set value '["",[{"text":"","color":"white","italic":true},{"storage":"pandamium.db:players","nbt":"selected.entry.data.homes.$(home).name","interpret":true}]]'

tellraw @a[tag=source,limit=1] [{"text":"","color":"#B7B7B7"},{"storage":"pandamium:temp","nbt":"home_name","interpret":true}," ",{"text":"ℹ","color":"blue","hoverEvent":{"action":"show_text","contents":[{"nbt":"dimension_name","storage":"pandamium:temp","color":"#C9C9C9"},{"text":"\nHome $(home)","color":"dark_gray"}]}}]
