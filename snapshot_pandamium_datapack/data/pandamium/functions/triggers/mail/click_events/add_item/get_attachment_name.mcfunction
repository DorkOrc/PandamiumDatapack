# arguments: id, tag, count

$execute unless score <count> variable matches 2.. in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value "{\"storage\":\"pandamium.db:mail\",\"nbt\":\"selected.entry.data.items[-1].name\",\"interpret\":true,\"hoverEvent\":{\"action\":\"show_item\",\"contents\":{\"id\":\"$(id)\",\"tag\":\"$(tag)\"}}}"
$execute if score <count> variable matches 2.. in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value "[\"$(count) \",{\"storage\":\"pandamium.db:mail\",\"nbt\":\"selected.entry.data.items[-1].name\",\"interpret\":true,\"hoverEvent\":{\"action\":\"show_item\",\"contents\":{\"id\":\"$(id)\",\"tag\":\"$(tag)\"}}}]"

execute in pandamium:staff_world run data modify storage pandamium.db:mail selected.entry.data.items[-1].name set from block 3 0 0 front_text.messages[0]
