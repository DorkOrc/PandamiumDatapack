# arguments: index, username, command, (id)

$data modify storage pandamium:cache macros."custom_dye.fixed".lines."$(index)a" set from storage pandamium:cache macros."custom_dye.fixed".entries[-1].commands[0]
$data modify storage pandamium:cache macros."custom_dye.fixed".lines."$(index)b" set from storage pandamium:cache macros."custom_dye.fixed".entries[-1].commands[1]
$data modify storage pandamium:cache macros."custom_dye.fixed".lines."$(index)c" set from storage pandamium:cache macros."custom_dye.fixed".entries[-1].commands[2]
$data modify storage pandamium:cache macros."custom_dye.fixed".lines."$(index)d" set from storage pandamium:cache macros."custom_dye.fixed".entries[-1].commands[3]
