# arguments: search

execute store result storage pandamium:templates macro.id.id int 1 run scoreboard players get @s id
function pandamium:triggers/search_players/keyboard_menu/expire_search_players_click_events with storage pandamium:templates macro.id

data modify storage pandamium:temp keyboard_buttons set value {\
    a:'{"text":"[","extra":[{"text":"A","bold":true},"]"],"color":"gray"}', \
    b:'{"text":"[","extra":[{"text":"B","bold":true},"]"],"color":"gray"}', \
    c:'{"text":"[","extra":[{"text":"C","bold":true},"]"],"color":"gray"}', \
    d:'{"text":"[","extra":[{"text":"D","bold":true},"]"],"color":"gray"}', \
    e:'{"text":"[","extra":[{"text":"E","bold":true},"]"],"color":"gray"}', \
    f:'{"text":"[","extra":[{"text":"F","bold":true},"]"],"color":"gray"}', \
    g:'{"text":"[","extra":[{"text":"G","bold":true},"]"],"color":"gray"}', \
    h:'{"text":"[","extra":[{"text":"H","bold":true},"]"],"color":"gray"}', \
    i:'{"text":"[","extra":[{"text":"I","bold":true},"]"],"color":"gray"}', \
    j:'{"text":"[","extra":[{"text":"J","bold":true},"]"],"color":"gray"}', \
    k:'{"text":"[","extra":[{"text":"K","bold":true},"]"],"color":"gray"}', \
    l:'{"text":"[","extra":[{"text":"L","bold":true},"]"],"color":"gray"}', \
    m:'{"text":"[","extra":[{"text":"M","bold":true},"]"],"color":"gray"}', \
    n:'{"text":"[","extra":[{"text":"N","bold":true},"]"],"color":"gray"}', \
    o:'{"text":"[","extra":[{"text":"O","bold":true},"]"],"color":"gray"}', \
    p:'{"text":"[","extra":[{"text":"P","bold":true},"]"],"color":"gray"}', \
    q:'{"text":"[","extra":[{"text":"Q","bold":true},"]"],"color":"gray"}', \
    r:'{"text":"[","extra":[{"text":"R","bold":true},"]"],"color":"gray"}', \
    s:'{"text":"[","extra":[{"text":"S","bold":true},"]"],"color":"gray"}', \
    t:'{"text":"[","extra":[{"text":"T","bold":true},"]"],"color":"gray"}', \
    u:'{"text":"[","extra":[{"text":"U","bold":true},"]"],"color":"gray"}', \
    v:'{"text":"[","extra":[{"text":"V","bold":true},"]"],"color":"gray"}', \
    w:'{"text":"[","extra":[{"text":"W","bold":true},"]"],"color":"gray"}', \
    x:'{"text":"[","extra":[{"text":"X","bold":true},"]"],"color":"gray"}', \
    y:'{"text":"[","extra":[{"text":"Y","bold":true},"]"],"color":"gray"}', \
    z:'{"text":"[","extra":[{"text":"Z","bold":true},"]"],"color":"gray"}', \
    _:'{"text":"[","extra":[{"text":"_","bold":true},"]"],"color":"gray"}', \
    0:'{"text":"[","extra":[{"text":"0","bold":true},"]"],"color":"gray"}', \
    1:'{"text":"[","extra":[{"text":"1","bold":true},"]"],"color":"gray"}', \
    2:'{"text":"[","extra":[{"text":"2","bold":true},"]"],"color":"gray"}', \
    3:'{"text":"[","extra":[{"text":"3","bold":true},"]"],"color":"gray"}', \
    4:'{"text":"[","extra":[{"text":"4","bold":true},"]"],"color":"gray"}', \
    5:'{"text":"[","extra":[{"text":"5","bold":true},"]"],"color":"gray"}', \
    6:'{"text":"[","extra":[{"text":"6","bold":true},"]"],"color":"gray"}', \
    7:'{"text":"[","extra":[{"text":"7","bold":true},"]"],"color":"gray"}', \
    8:'{"text":"[","extra":[{"text":"8","bold":true},"]"],"color":"gray"}', \
    9:'{"text":"[","extra":[{"text":"9","bold":true},"]"],"color":"gray"}', \
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

execute unless data storage pandamium:temp origin_trigger run tellraw @s ["",{"text":"Keyboard:","color":"aqua","bold":true}]
execute if data storage pandamium:temp {origin_trigger:"mail"} run tellraw @s ["",{"text":"Keyboard:","color":"aqua","bold":true},{"text":" (Mail)","color":"aqua"}]
execute if data storage pandamium:temp {origin_trigger:"jail"} run tellraw @s ["",{"text":"Keyboard:","color":"aqua","bold":true},{"text":" (Jail)","color":"aqua"}]
execute if data storage pandamium:temp {origin_trigger:"unjail"} run tellraw @s ["",{"text":"Keyboard:","color":"aqua","bold":true},{"text":" (Unjail)","color":"aqua"}]
execute if data storage pandamium:temp {origin_trigger:"player_info"} run tellraw @s ["",{"text":"Keyboard:","color":"aqua","bold":true},{"text":" (Player Info)","color":"aqua"}]

tellraw @s [\
    "",{"storage":"pandamium:temp","nbt":"keyboard_buttons.q","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.w","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.e","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.r","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.t","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.y","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.u","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.i","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.o","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.p","interpret":true},\
    "\n  ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.a","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.s","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.d","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.f","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.g","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.h","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.j","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.k","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.l","interpret":true},\
    "\n    ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.z","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.x","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.c","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.v","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.b","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.n","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.m","interpret":true},\
    "\n",{"storage":"pandamium:temp","nbt":"keyboard_buttons.0","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.1","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.2","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.3","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.4","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.5","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.6","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.7","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.8","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons._","interpret":true},\
    "\n",{"storage":"pandamium:temp","nbt":"keyboard_buttons.delete","interpret":true}," ",{"storage":"pandamium:temp","nbt":"keyboard_buttons.clear","interpret":true}\
]
