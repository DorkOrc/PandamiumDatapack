# arguments: target_index, top_index

$data modify storage pandamium:cache macros."custom_dye.fixed".lines."$(target_index)a" set from storage pandamium:cache macros."custom_dye.fixed".entries[-1].commands[0]
$data modify storage pandamium:cache macros."custom_dye.fixed".lines."$(target_index)b" set from storage pandamium:cache macros."custom_dye.fixed".entries[-1].commands[1]
$data modify storage pandamium:cache macros."custom_dye.fixed".lines."$(target_index)c" set from storage pandamium:cache macros."custom_dye.fixed".entries[-1].commands[2]
$data modify storage pandamium:cache macros."custom_dye.fixed".lines."$(target_index)d" set from storage pandamium:cache macros."custom_dye.fixed".entries[-1].commands[3]
$data modify storage pandamium:cache macros."custom_dye.fixed".lines."$(top_index)a" set value "return 0"
$data modify storage pandamium:cache macros."custom_dye.fixed".lines."$(top_index)b" set value "return 0"
$data modify storage pandamium:cache macros."custom_dye.fixed".lines."$(top_index)c" set value "return 0"
$data modify storage pandamium:cache macros."custom_dye.fixed".lines."$(top_index)d" set value "return 0"

$data modify storage pandamium:cache macros."custom_dye.fixed".entries[$(target_index)] set from storage pandamium:cache macros."custom_dye.fixed".entries[]
$data modify storage pandamium:cache macros."custom_dye.fixed".entries[$(target_index)].index set value $(target_index)
data remove storage pandamium:cache macros."custom_dye.fixed".entries[-1]
