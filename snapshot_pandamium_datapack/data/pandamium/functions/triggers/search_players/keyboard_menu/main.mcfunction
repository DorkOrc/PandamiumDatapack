# arguments: search

execute store result storage pandamium:templates macro.id.id int 1 run scoreboard players get @s id
function pandamium:triggers/search_players/keyboard_menu/expire_search_players_click_events with storage pandamium:templates macro.id

data modify storage pandamium:temp keyboard_buttons set value {\
    a:'{"text":"[","color":"gray","extra":[{"text":"A","bold":true},"]"]}', \
    b:'{"text":"[","color":"gray","extra":[{"text":"B","bold":true},"]"]}', \
    c:'{"text":"[","color":"gray","extra":[{"text":"C","bold":true},"]"]}', \
    d:'{"text":"[","color":"gray","extra":[{"text":"D","bold":true},"]"]}', \
    e:'{"text":"[","color":"gray","extra":[{"text":"E","bold":true},"]"]}', \
    f:'{"text":"[","color":"gray","extra":[{"text":"F","bold":true},"]"]}', \
    g:'{"text":"[","color":"gray","extra":[{"text":"G","bold":true},"]"]}', \
    h:'{"text":"[","color":"gray","extra":[{"text":"H","bold":true},"]"]}', \
    i:'{"text":"[","color":"gray","extra":[{"text":"I","bold":true},"]"]}', \
    j:'{"text":"[","color":"gray","extra":[{"text":"J","bold":true},"]"]}', \
    k:'{"text":"[","color":"gray","extra":[{"text":"K","bold":true},"]"]}', \
    l:'{"text":"[","color":"gray","extra":[{"text":"L","bold":true},"]"]}', \
    m:'{"text":"[","color":"gray","extra":[{"text":"M","bold":true},"]"]}', \
    n:'{"text":"[","color":"gray","extra":[{"text":"N","bold":true},"]"]}', \
    o:'{"text":"[","color":"gray","extra":[{"text":"O","bold":true},"]"]}', \
    p:'{"text":"[","color":"gray","extra":[{"text":"P","bold":true},"]"]}', \
    q:'{"text":"[","color":"gray","extra":[{"text":"Q","bold":true},"]"]}', \
    r:'{"text":"[","color":"gray","extra":[{"text":"R","bold":true},"]"]}', \
    s:'{"text":"[","color":"gray","extra":[{"text":"S","bold":true},"]"]}', \
    t:'{"text":"[","color":"gray","extra":[{"text":"T","bold":true},"]"]}', \
    u:'{"text":"[","color":"gray","extra":[{"text":"U","bold":true},"]"]}', \
    v:'{"text":"[","color":"gray","extra":[{"text":"V","bold":true},"]"]}', \
    w:'{"text":"[","color":"gray","extra":[{"text":"W","bold":true},"]"]}', \
    x:'{"text":"[","color":"gray","extra":[{"text":"X","bold":true},"]"]}', \
    y:'{"text":"[","color":"gray","extra":[{"text":"Y","bold":true},"]"]}', \
    z:'{"text":"[","color":"gray","extra":[{"text":"Z","bold":true},"]"]}', \
    _:'{"text":"[","color":"gray","extra":[{"text":"_","bold":true},"]"]}', \
    0:'{"text":"[","color":"gray","extra":[{"text":"0","bold":true},"]"]}', \
    1:'{"text":"[","color":"gray","extra":[{"text":"1","bold":true},"]"]}', \
    2:'{"text":"[","color":"gray","extra":[{"text":"2","bold":true},"]"]}', \
    3:'{"text":"[","color":"gray","extra":[{"text":"3","bold":true},"]"]}', \
    4:'{"text":"[","color":"gray","extra":[{"text":"4","bold":true},"]"]}', \
    5:'{"text":"[","color":"gray","extra":[{"text":"5","bold":true},"]"]}', \
    6:'{"text":"[","color":"gray","extra":[{"text":"6","bold":true},"]"]}', \
    7:'{"text":"[","color":"gray","extra":[{"text":"7","bold":true},"]"]}', \
    8:'{"text":"[","color":"gray","extra":[{"text":"8","bold":true},"]"]}', \
    9:'{"text":"[","color":"gray","extra":[{"text":"9","bold":true},"]"]}', \
    delete:'{"text":"[←]","color":"gray"}', \
    clear:'{"text":"[Clear]","color":"gray"}'\
}


$execute if data storage pandamium:temp {next_characters:["a"]} run function pandamium:triggers/search_players/keyboard_menu/create_click_event {search:"$(search)",character:"a"}
$execute if data storage pandamium:temp {next_characters:["b"]} run function pandamium:triggers/search_players/keyboard_menu/create_click_event {search:"$(search)",character:"b"}
$execute if data storage pandamium:temp {next_characters:["c"]} run function pandamium:triggers/search_players/keyboard_menu/create_click_event {search:"$(search)",character:"c"}
$execute if data storage pandamium:temp {next_characters:["d"]} run function pandamium:triggers/search_players/keyboard_menu/create_click_event {search:"$(search)",character:"d"}
$execute if data storage pandamium:temp {next_characters:["e"]} run function pandamium:triggers/search_players/keyboard_menu/create_click_event {search:"$(search)",character:"e"}
$execute if data storage pandamium:temp {next_characters:["f"]} run function pandamium:triggers/search_players/keyboard_menu/create_click_event {search:"$(search)",character:"f"}
$execute if data storage pandamium:temp {next_characters:["g"]} run function pandamium:triggers/search_players/keyboard_menu/create_click_event {search:"$(search)",character:"g"}
$execute if data storage pandamium:temp {next_characters:["h"]} run function pandamium:triggers/search_players/keyboard_menu/create_click_event {search:"$(search)",character:"h"}
$execute if data storage pandamium:temp {next_characters:["i"]} run function pandamium:triggers/search_players/keyboard_menu/create_click_event {search:"$(search)",character:"i"}
$execute if data storage pandamium:temp {next_characters:["j"]} run function pandamium:triggers/search_players/keyboard_menu/create_click_event {search:"$(search)",character:"j"}
$execute if data storage pandamium:temp {next_characters:["k"]} run function pandamium:triggers/search_players/keyboard_menu/create_click_event {search:"$(search)",character:"k"}
$execute if data storage pandamium:temp {next_characters:["l"]} run function pandamium:triggers/search_players/keyboard_menu/create_click_event {search:"$(search)",character:"l"}
$execute if data storage pandamium:temp {next_characters:["m"]} run function pandamium:triggers/search_players/keyboard_menu/create_click_event {search:"$(search)",character:"m"}
$execute if data storage pandamium:temp {next_characters:["n"]} run function pandamium:triggers/search_players/keyboard_menu/create_click_event {search:"$(search)",character:"n"}
$execute if data storage pandamium:temp {next_characters:["o"]} run function pandamium:triggers/search_players/keyboard_menu/create_click_event {search:"$(search)",character:"o"}
$execute if data storage pandamium:temp {next_characters:["p"]} run function pandamium:triggers/search_players/keyboard_menu/create_click_event {search:"$(search)",character:"p"}
$execute if data storage pandamium:temp {next_characters:["q"]} run function pandamium:triggers/search_players/keyboard_menu/create_click_event {search:"$(search)",character:"q"}
$execute if data storage pandamium:temp {next_characters:["r"]} run function pandamium:triggers/search_players/keyboard_menu/create_click_event {search:"$(search)",character:"r"}
$execute if data storage pandamium:temp {next_characters:["s"]} run function pandamium:triggers/search_players/keyboard_menu/create_click_event {search:"$(search)",character:"s"}
$execute if data storage pandamium:temp {next_characters:["t"]} run function pandamium:triggers/search_players/keyboard_menu/create_click_event {search:"$(search)",character:"t"}
$execute if data storage pandamium:temp {next_characters:["u"]} run function pandamium:triggers/search_players/keyboard_menu/create_click_event {search:"$(search)",character:"u"}
$execute if data storage pandamium:temp {next_characters:["v"]} run function pandamium:triggers/search_players/keyboard_menu/create_click_event {search:"$(search)",character:"v"}
$execute if data storage pandamium:temp {next_characters:["w"]} run function pandamium:triggers/search_players/keyboard_menu/create_click_event {search:"$(search)",character:"w"}
$execute if data storage pandamium:temp {next_characters:["x"]} run function pandamium:triggers/search_players/keyboard_menu/create_click_event {search:"$(search)",character:"x"}
$execute if data storage pandamium:temp {next_characters:["y"]} run function pandamium:triggers/search_players/keyboard_menu/create_click_event {search:"$(search)",character:"y"}
$execute if data storage pandamium:temp {next_characters:["z"]} run function pandamium:triggers/search_players/keyboard_menu/create_click_event {search:"$(search)",character:"z"}
$execute if data storage pandamium:temp {next_characters:["_"]} run function pandamium:triggers/search_players/keyboard_menu/create_click_event {search:"$(search)",character:"_"}
$execute if data storage pandamium:temp {next_characters:["0"]} run function pandamium:triggers/search_players/keyboard_menu/create_click_event {search:"$(search)",character:"0"}
$execute if data storage pandamium:temp {next_characters:["1"]} run function pandamium:triggers/search_players/keyboard_menu/create_click_event {search:"$(search)",character:"1"}
$execute if data storage pandamium:temp {next_characters:["2"]} run function pandamium:triggers/search_players/keyboard_menu/create_click_event {search:"$(search)",character:"2"}
$execute if data storage pandamium:temp {next_characters:["3"]} run function pandamium:triggers/search_players/keyboard_menu/create_click_event {search:"$(search)",character:"3"}
$execute if data storage pandamium:temp {next_characters:["4"]} run function pandamium:triggers/search_players/keyboard_menu/create_click_event {search:"$(search)",character:"4"}
$execute if data storage pandamium:temp {next_characters:["5"]} run function pandamium:triggers/search_players/keyboard_menu/create_click_event {search:"$(search)",character:"5"}
$execute if data storage pandamium:temp {next_characters:["6"]} run function pandamium:triggers/search_players/keyboard_menu/create_click_event {search:"$(search)",character:"6"}
$execute if data storage pandamium:temp {next_characters:["7"]} run function pandamium:triggers/search_players/keyboard_menu/create_click_event {search:"$(search)",character:"7"}
$execute if data storage pandamium:temp {next_characters:["8"]} run function pandamium:triggers/search_players/keyboard_menu/create_click_event {search:"$(search)",character:"8"}
$execute if data storage pandamium:temp {next_characters:["9"]} run function pandamium:triggers/search_players/keyboard_menu/create_click_event {search:"$(search)",character:"9"}

execute store result score <search_length> variable run data get storage pandamium:templates macro.search.search
execute if score <search_length> variable matches 1.. run function pandamium:triggers/search_players/keyboard_menu/create_delete_click_event
execute if score <search_length> variable matches 1.. run function pandamium:triggers/search_players/keyboard_menu/create_clear_click_event

execute if data storage pandamium:temp origin_trigger run tellraw @s[scores={send_extra_debug_info=2..}] ["debug: origin_trigger=",{"storage":"pandamium:temp","nbt":"origin_trigger"}]
tellraw @s [\
    "",{"storage":"pandamium:temp","nbt":"keyboard_buttons.q","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.w","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.e","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.r","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.t","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.y","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.u","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.i","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.o","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.p","interpret":true},\
    "\n  ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.a","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.s","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.d","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.f","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.g","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.h","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.j","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.k","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.l","interpret":true},\
    "\n    ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.z","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.x","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.c","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.v","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.b","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.n","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.m","interpret":true},\
    "\n",{"storage":"pandamium:temp","nbt":"keyboard_buttons.0","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.1","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.2","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.3","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.4","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.5","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.6","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.7","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.8","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons._","interpret":true},\
    "\n",{"storage":"pandamium:temp","nbt":"keyboard_buttons.delete","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.clear","interpret":true}\
]
