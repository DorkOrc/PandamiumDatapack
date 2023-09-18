data modify storage pandamium:dictionary hyperlink.discord set value '{"text":"Discord","color":"blue","underlined":true,"hoverEvent":{"action":"show_text","value":[{"text":"Click to join the ","color":"#5865F2"},{"text":"Discord Server","bold":true}]},"clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu/"}}'

data modify storage pandamium:dictionary triggers.discord.discord_message set value '[[{"text":"","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Click to join our ","color":"aqua"},{"text":"Discord Server","bold":true}]},"clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu/"}},{"text":"Join us","color":"aqua"}," on ",{"text":"Discord","color":"aqua"}," at ",{"text":"discord.pandamium.eu","color":"aqua"},"!"]]'

data modify storage pandamium:dictionary font.menu.custom_styles.info set value '["This feature is currently a work\\nin progress and is not directly\\ncompatible with regular colours.\\nYou will have to pick the ",{"text":"Reset","bold":true},"\\nfont to pick a solid colour\\nagain."]'
data modify storage pandamium:dictionary font.menu.custom_styles.rainbow.button set value '[{"color":"#FF0000","text":"["},{"color":"#FF9F00","text":"R"},{"color":"#BFFF00","text":"a"},{"color":"#1FFF00","text":"i"},{"color":"#00FF7F","text":"n"},{"color":"#00DFFF","text":"b"},{"color":"#003FFF","text":"o"},{"color":"#5F00FF","text":"w"},{"color":"#FF00FF","text":"]"}]'
data modify storage pandamium:dictionary font.menu.custom_styles.rainbow.hover_event set value '[{"color":"#FF0000","text":"C"},{"color":"#FF1F00","text":"l"},{"color":"#FF4F00","text":"i"},{"color":"#FF6F00","text":"c"},{"color":"#FF9F00","text":"k"},{"color":"#FFBF00","text":" "},{"color":"#FFEF00","text":"t"},{"color":"#EFFF00","text":"o"},{"color":"#BFFF00","text":" "},{"color":"#9FFF00","text":"p"},{"color":"#6FFF00","text":"i"},{"color":"#4FFF00","text":"c"},{"color":"#1FFF00","text":"k"},{"color":"#00FF00","text":" "},{"color":"#00FF2F","text":"c"},{"color":"#00FF4F","text":"u"},{"color":"#00FF7F","text":"s"},{"color":"#00FF9F","text":"t"},{"color":"#00FFCF","text":"o"},{"color":"#00FFEF","text":"m"},{"color":"#00DFFF","text":" "},{"color":"#00BFFF","text":"f"},{"color":"#008FFF","text":"o"},{"color":"#006FFF","text":"n"},{"color":"#003FFF","text":"t"},{"color":"#001FFF","text":" "},[{"text":"","bold":true},{"color":"#0F00FF","text":"R"},{"color":"#2F00FF","text":"a"},{"color":"#5F00FF","text":"i"},{"color":"#7F00FF","text":"n"},{"color":"#AF00FF","text":"b"},{"color":"#CF00FF","text":"o"},{"color":"#FF00FF","text":"w"}]]'
data modify storage pandamium:dictionary font.menu.custom_gradients_page.button set value '{"text":"[Gradients]","color":"white"}'
data modify storage pandamium:dictionary font.menu.custom_gradients_page.hover_event set value '[{"text":"Click to see ","color":"white"},{"text":"Gradients","bold":true}]'

data modify storage pandamium:dictionary dimension.overworld set value {id:0,name:'The Overworld'}
data modify storage pandamium:dictionary dimension.the_nether set value {id:-1,name:'The Nether'}
data modify storage pandamium:dictionary dimension.the_end set value {id:1,name:'The End'}
data modify storage pandamium:dictionary dimension.staff_world set value {id:2,name:'The Staff World'}

data modify storage pandamium:dictionary hex_colour_segments set value ["00","01","02","03","04","05","06","07","08","09","0A","0B","0C","0D","0E","0F","10","11","12","13","14","15","16","17","18","19","1A","1B","1C","1D","1E","1F","20","21","22","23","24","25","26","27","28","29","2A","2B","2C","2D","2E","2F","30","31","32","33","34","35","36","37","38","39","3A","3B","3C","3D","3E","3F","40","41","42","43","44","45","46","47","48","49","4A","4B","4C","4D","4E","4F","50","51","52","53","54","55","56","57","58","59","5A","5B","5C","5D","5E","5F","60","61","62","63","64","65","66","67","68","69","6A","6B","6C","6D","6E","6F","70","71","72","73","74","75","76","77","78","79","7A","7B","7C","7D","7E","7F","80","81","82","83","84","85","86","87","88","89","8A","8B","8C","8D","8E","8F","90","91","92","93","94","95","96","97","98","99","9A","9B","9C","9D","9E","9F","A0","A1","A2","A3","A4","A5","A6","A7","A8","A9","AA","AB","AC","AD","AE","AF","B0","B1","B2","B3","B4","B5","B6","B7","B8","B9","BA","BB","BC","BD","BE","BF","C0","C1","C2","C3","C4","C5","C6","C7","C8","C9","CA","CB","CC","CD","CE","CF","D0","D1","D2","D3","D4","D5","D6","D7","D8","D9","DA","DB","DC","DD","DE","DF","E0","E1","E2","E3","E4","E5","E6","E7","E8","E9","EA","EB","EC","ED","EE","EF","F0","F1","F2","F3","F4","F5","F6","F7","F8","F9","FA","FB","FC","FD","FE","FF"]

data modify storage pandamium:dictionary alphanumeric_allowed set value ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","1","2","3","4","5","6","7","8","9","0","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","_"]
data modify storage pandamium:dictionary alphanumeric_replacements set value [\
    {character:"a",replace:["à","á","â","ã","ä","å"]},\
    {character:"c",replace:["ç"]},\
    {character:"d",replace:["ð"]},\
    {character:"e",replace:["è","é","ê","ë"]},\
    {character:"i",replace:["ì","í","î","ï"]},\
    {character:"n",replace:["ñ"]},\
    {character:"o",replace:["ò","ó","ô","õ","ö","ø"]},\
    {character:"u",replace:["ù","ú","û","ü"]},\
    {character:"y",replace:["ý","ÿ"]},\
    {character:"A",replace:["À","Á","Â","Ã","Ä","Å"]},\
    {character:"C",replace:["Ç"]},\
    {character:"D",replace:["Ð"]},\
    {character:"E",replace:["È","É","Ê","Ë"]},\
    {character:"I",replace:["Ì","Í","Î","Ï"]},\
    {character:"N",replace:["Ñ"]},\
    {character:"O",replace:["Ò","Ó","Ô","Õ","Ö","Ø"]},\
    {character:"U",replace:["Ù","Ú","Û","Ü"]},\
    {character:"Y",replace:["Ý","Ÿ"]},\
    {character:"ss",replace:["ß"]},\
    {character:"SS",replace:["ẞ"]},\
    {character:"ae",replace:["æ"]},\
    {character:"AE",replace:["Æ"]},\
    {character:"oe",replace:["œ"]},\
    {character:"OE",replace:["Œ"]},\
    {character:"",replace:["'","`"]}\
    ]

data modify storage pandamium:dictionary flair.flairs set value ['"☻"','"💎"','"😎"','"✨"','"💯"','"☠"','"💅"','"🎲"','"🔥"','"🚀"','"🦋"','"☀"','"☽"','"💥"','"🌌"','"🌸"','"🌷"','"♬"','"♪"','"💩"','"🏃"','"👁"','"🌊"','"⌛"','"⚡"','"☁"','"☂"','"❄"','"☃"','"☄"','"💤"','"🫧"','"🐚"','"🍬"','"🍭"','"🍪"','"🍦"','"🍕"','"🍖"','"✂"','"⚔"','"🗡"','"⛏"','"🪓"','"🧪"','"⚗"','"🧋"','"☕"','"🍵"','"🍸"','"🍹"','"🍻"','"🥂"','"🥤"','"🥛"','"🎂"','"🎈"','"💐"','"🎁"','"🕯"','"🌈"','"🎉"','"🎆"','"⭐"','"✰"','"🌟"','"🌠"','"❤"','"💔"','"💕"','"💙"','"💚"','"💝"','"💓"','"❥"','"🫶"','"🍓"']
