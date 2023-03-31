function pandamium:misc/font/custom_fonts/generate/pre

scoreboard players set <max_colour_index> variable 14
execute if data storage pandamium:temp characters[0] in pandamium:staff_world run function pandamium:misc/font/custom_fonts/loop/rainbow

function pandamium:misc/font/custom_fonts/generate/post
