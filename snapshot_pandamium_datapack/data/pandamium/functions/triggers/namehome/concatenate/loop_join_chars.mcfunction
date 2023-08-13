$data modify storage pandamium:temp this_char set value "$(char)"

$data modify storage pandamium:temp arguments.plain set value "$(plain)$(char)"

data remove storage pandamium:temp chars[0]
execute if data storage pandamium:temp chars[0] run data modify storage pandamium:temp arguments.char set from storage pandamium:temp chars[0]
execute if data storage pandamium:temp chars[0] run function pandamium:triggers/namehome/concatenate/loop_join_chars with storage pandamium:temp arguments
