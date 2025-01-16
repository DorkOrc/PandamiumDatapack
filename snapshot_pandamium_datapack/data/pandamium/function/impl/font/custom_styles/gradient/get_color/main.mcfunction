# arguments: red, green, blue

$data modify storage pandamium:local functions."pandamium:impl/font/*".red set from storage pandamium:dictionary hex_colour_segments[$(red)]
$data modify storage pandamium:local functions."pandamium:impl/font/*".green set from storage pandamium:dictionary hex_colour_segments[$(green)]
$data modify storage pandamium:local functions."pandamium:impl/font/*".blue set from storage pandamium:dictionary hex_colour_segments[$(blue)]

function pandamium:impl/font/custom_styles/gradient/get_color/concat with storage pandamium:local functions."pandamium:impl/font/*"
