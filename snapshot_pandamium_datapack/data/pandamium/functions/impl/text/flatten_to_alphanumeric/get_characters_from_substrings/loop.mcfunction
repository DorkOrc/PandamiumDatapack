# character
data modify storage pandamium:temp this_character set string storage pandamium:text substrings[0] 0 1
execute \
    unless data storage pandamium:temp {this_character:'a'} \
    unless data storage pandamium:temp {this_character:'b'} \
    unless data storage pandamium:temp {this_character:'c'} \
    unless data storage pandamium:temp {this_character:'d'} \
    unless data storage pandamium:temp {this_character:'e'} \
    unless data storage pandamium:temp {this_character:'f'} \
    unless data storage pandamium:temp {this_character:'g'} \
    unless data storage pandamium:temp {this_character:'h'} \
    unless data storage pandamium:temp {this_character:'i'} \
    unless data storage pandamium:temp {this_character:'j'} \
    unless data storage pandamium:temp {this_character:'k'} \
    unless data storage pandamium:temp {this_character:'l'} \
    unless data storage pandamium:temp {this_character:'m'} \
    unless data storage pandamium:temp {this_character:'n'} \
    unless data storage pandamium:temp {this_character:'o'} \
    unless data storage pandamium:temp {this_character:'p'} \
    unless data storage pandamium:temp {this_character:'q'} \
    unless data storage pandamium:temp {this_character:'r'} \
    unless data storage pandamium:temp {this_character:'s'} \
    unless data storage pandamium:temp {this_character:'t'} \
    unless data storage pandamium:temp {this_character:'u'} \
    unless data storage pandamium:temp {this_character:'v'} \
    unless data storage pandamium:temp {this_character:'w'} \
    unless data storage pandamium:temp {this_character:'x'} \
    unless data storage pandamium:temp {this_character:'y'} \
    unless data storage pandamium:temp {this_character:'z'} \
    unless data storage pandamium:temp {this_character:'A'} \
    unless data storage pandamium:temp {this_character:'B'} \
    unless data storage pandamium:temp {this_character:'C'} \
    unless data storage pandamium:temp {this_character:'D'} \
    unless data storage pandamium:temp {this_character:'E'} \
    unless data storage pandamium:temp {this_character:'F'} \
    unless data storage pandamium:temp {this_character:'G'} \
    unless data storage pandamium:temp {this_character:'H'} \
    unless data storage pandamium:temp {this_character:'I'} \
    unless data storage pandamium:temp {this_character:'J'} \
    unless data storage pandamium:temp {this_character:'K'} \
    unless data storage pandamium:temp {this_character:'L'} \
    unless data storage pandamium:temp {this_character:'M'} \
    unless data storage pandamium:temp {this_character:'N'} \
    unless data storage pandamium:temp {this_character:'O'} \
    unless data storage pandamium:temp {this_character:'P'} \
    unless data storage pandamium:temp {this_character:'Q'} \
    unless data storage pandamium:temp {this_character:'R'} \
    unless data storage pandamium:temp {this_character:'S'} \
    unless data storage pandamium:temp {this_character:'T'} \
    unless data storage pandamium:temp {this_character:'U'} \
    unless data storage pandamium:temp {this_character:'V'} \
    unless data storage pandamium:temp {this_character:'W'} \
    unless data storage pandamium:temp {this_character:'X'} \
    unless data storage pandamium:temp {this_character:'Y'} \
    unless data storage pandamium:temp {this_character:'Z'} \
    unless data storage pandamium:temp {this_character:'0'} \
    unless data storage pandamium:temp {this_character:'1'} \
    unless data storage pandamium:temp {this_character:'2'} \
    unless data storage pandamium:temp {this_character:'3'} \
    unless data storage pandamium:temp {this_character:'4'} \
    unless data storage pandamium:temp {this_character:'5'} \
    unless data storage pandamium:temp {this_character:'6'} \
    unless data storage pandamium:temp {this_character:'7'} \
    unless data storage pandamium:temp {this_character:'8'} \
    unless data storage pandamium:temp {this_character:'9'} \
        run data modify storage pandamium:temp this_character set value '_'
$data modify storage pandamium:text concat.$(index) set from storage pandamium:temp this_character

# substring
data modify storage pandamium:text substrings[0] set string storage pandamium:text substrings[0] 1
data modify storage pandamium:temp this_component set from storage pandamium:text substrings[0]
execute if data storage pandamium:temp {this_component:''} run data remove storage pandamium:text substrings[0]

# loop
execute store result storage pandamium:templates macro.index.index int 1 run scoreboard players add <index> variable 1
execute if data storage pandamium:text substrings[0] run function pandamium:impl/text/flatten_to_alphanumeric/get_characters_from_substrings/loop with storage pandamium:templates macro.index
