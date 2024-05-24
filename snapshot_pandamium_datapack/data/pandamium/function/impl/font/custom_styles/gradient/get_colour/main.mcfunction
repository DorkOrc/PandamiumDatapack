$data modify storage pandamium:templates macro.red__green__blue.red set from storage pandamium:dictionary hex_colour_segments[$(red)]
$data modify storage pandamium:templates macro.red__green__blue.green set from storage pandamium:dictionary hex_colour_segments[$(green)]
$data modify storage pandamium:templates macro.red__green__blue.blue set from storage pandamium:dictionary hex_colour_segments[$(blue)]

execute in pandamium:staff_world run function pandamium:impl/font/custom_styles/gradient/get_colour/write_to_sign with storage pandamium:templates macro.red__green__blue
