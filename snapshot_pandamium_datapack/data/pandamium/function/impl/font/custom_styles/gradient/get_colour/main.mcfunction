$data modify storage pandamium:templates macro.red__green__blue.red set from storage pandamium:dictionary hex_colour_segments[$(red)]
$data modify storage pandamium:templates macro.red__green__blue.green set from storage pandamium:dictionary hex_colour_segments[$(green)]
$data modify storage pandamium:templates macro.red__green__blue.blue set from storage pandamium:dictionary hex_colour_segments[$(blue)]

function pandamium:impl/font/custom_styles/gradient/get_colour/append_character_with_custom_color with storage pandamium:templates macro.red__green__blue
