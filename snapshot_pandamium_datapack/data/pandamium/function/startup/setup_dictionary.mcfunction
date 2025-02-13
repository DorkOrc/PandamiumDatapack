data modify storage pandamium:dictionary hyperlink.discord set value {text:"Discord",color:"blue",underlined:true,hover_event:{action:"show_text",value:[{text:"Click to join the ",color:"#5865F2"},{text:"Discord Server",bold:true}]},click_event:{action:"open_url",url:"http://discord.pandamium.eu/"}}

data modify storage pandamium:dictionary triggers.supporter_only_trigger set value [{text:" Only supporters on Patreon can use that trigger! You can check out our ",color:"red",hover_event:{action:"show_text",value:[{text:"Click to join our ",color:"aqua"},{text:"Discord Server",bold:true}]},click_event:{action:"open_url",url:"http://discord.pandamium.eu"}},{text:"discord server",bold:true},{text:" for more information on how to support us!"}]

data modify storage pandamium:dictionary font.menu.custom_styles.info set value [{text:"This feature is currently a work\nin progress and is not directly\ncompatible with regular colours.\nYou will have to pick the "},{"text":"Reset","bold":true},{text:"\nfont to pick a solid colour\nagain."}]
data modify storage pandamium:dictionary font.menu.custom_styles.rainbow.button set value [{color:"#FF0000",text:"["},{color:"#FF9F00",text:"R"},{color:"#BFFF00",text:"a"},{color:"#1FFF00",text:"i"},{color:"#00FF7F",text:"n"},{color:"#00DFFF",text:"b"},{color:"#003FFF",text:"o"},{color:"#5F00FF",text:"w"},{color:"#FF00FF",text:"]"}]
data modify storage pandamium:dictionary font.menu.custom_styles.rainbow.hover_event set value [{color:"#FF0000",text:"C"},{color:"#FF1F00",text:"l"},{color:"#FF4F00",text:"i"},{color:"#FF6F00",text:"c"},{color:"#FF9F00",text:"k"},{color:"#FFBF00",text:" "},{color:"#FFEF00",text:"t"},{color:"#EFFF00",text:"o"},{color:"#BFFF00",text:" "},{color:"#9FFF00",text:"p"},{color:"#6FFF00",text:"i"},{color:"#4FFF00",text:"c"},{color:"#1FFF00",text:"k"},{color:"#00FF00",text:" "},{color:"#00FF2F",text:"c"},{color:"#00FF4F",text:"u"},{color:"#00FF7F",text:"s"},{color:"#00FF9F",text:"t"},{color:"#00FFCF",text:"o"},{color:"#00FFEF",text:"m"},{color:"#00DFFF",text:" "},{color:"#00BFFF",text:"f"},{color:"#008FFF",text:"o"},{color:"#006FFF",text:"n"},{color:"#003FFF",text:"t"},{color:"#001FFF",text:" "},{bold:true,extra:[{color:"#0F00FF",text:"R"},{color:"#2F00FF",text:"a"},{color:"#5F00FF",text:"i"},{color:"#7F00FF",text:"n"},{color:"#AF00FF",text:"b"},{color:"#CF00FF",text:"o"},{color:"#FF00FF",text:"w"}],text:""}]
data modify storage pandamium:dictionary font.menu.custom_gradients_page.button set value {text:"[Gradients]",color:"white"}
data modify storage pandamium:dictionary font.menu.custom_gradients_page.hover_event set value [{text:"Click to see ",color:"white"},{text:"Gradients",bold:true}]

data modify storage pandamium:dictionary triggers.mail.main_menu_button set value {text:"[Main Menu]",color:"gold",hover_event:{action:"show_text",value:[{text:"Click to go to ",color:"gold"},{text:"Main Menu",bold:true},{text:" page"}]},click_event:{action:"run_command",command:"trigger mail set 1"}}
data modify storage pandamium:dictionary triggers.mail.inbox_menu_button set value {text:"[Inbox]",color:"gold",hover_event:{action:"show_text",value:[{text:"Click to go to ",color:"gold"},{text:"Inbox",bold:true},{text:" page"}]},click_event:{action:"run_command",command:"trigger mail set 1000001"}}
data modify storage pandamium:dictionary triggers.mail.news_feed_menu_button set value {text:"[News Feed]",color:"gold",hover_event:{action:"show_text",value:[{text:"Click to go to ",color:"gold"},{text:"News Feed",bold:true},{text:" page"}]},click_event:{action:"run_command",command:"trigger mail set 1000007"}}
data modify storage pandamium:dictionary triggers.mail.drafts_menu_button set value {text:"[Drafts]",color:"gold",hover_event:{action:"show_text",value:[{text:"Click to go to ",color:"gold"},{text:"Drafts","bold":true},{text:" page"}]},click_event:{action:"run_command",command:"trigger mail set 1000005"}}
data modify storage pandamium:dictionary triggers.mail.staff_inbox_menu_button set value {text:"[Staff Team Inbox]",color:"gold",hover_event:{action:"show_text",value:[{text:"Click to go to ",color:"gold"},{text:"Staff Team's Inbox",bold:true},{text:" page"}]},click_event:{action:"run_command",command:"trigger mail set 1000008"}}

function pandamium:triggers/particles/print_menu/setup_dictionary

data modify storage pandamium:dictionary dimension.overworld set value {id:0,name:"The Overworld"}
data modify storage pandamium:dictionary dimension.minecraft:overworld set from storage pandamium:dictionary dimension.overworld
data modify storage pandamium:dictionary dimension.the_nether set value {id:-1,name:"The Nether"}
data modify storage pandamium:dictionary dimension.minecraft:the_nether set from storage pandamium:dictionary dimension.the_nether
data modify storage pandamium:dictionary dimension.the_end set value {id:1,name:"The End"}
data modify storage pandamium:dictionary dimension.minecraft:the_end set from storage pandamium:dictionary dimension.the_end
data modify storage pandamium:dictionary dimension.staff_world set value {id:2,name:"The Staff World"}
data modify storage pandamium:dictionary dimension.pandamium:staff_world set from storage pandamium:dictionary dimension.staff_world

data modify storage pandamium:dictionary parkour.parkour_1.name set value "Caves & Cliffs"
data modify storage pandamium:dictionary parkour.parkour_2.name set value "Monstrosity"
data modify storage pandamium:dictionary parkour.parkour_3.name set value "Forgotten Caverns"
data modify storage pandamium:dictionary parkour.parkour_4.name set value "Jack-o-Giggle"

execute unless data storage pandamium:dictionary guidebook_item_name run data modify storage pandamium:dictionary guidebook_item_name set value {bold:true,extra:[{color:"#5454FB",text:"P"},{color:"#546FFB",text:"a"},{color:"#548BFB",text:"n"},{color:"#54A7FB",text:"d"},{color:"#54C3FB",text:"a"},{color:"#54DFFB",text:"m"},{color:"#54FBFB",text:"i"},{color:"#54FBDF",text:"u"},{color:"#54FBC3",text:"m"},{color:"#54FB8B",text:" G"},{color:"#54FB6F",text:"u"},{color:"#54FB54",text:"i"},{color:"#46ED46",text:"d"},{color:"#38DF38",text:"e"},{color:"#2AD12A",text:"b"},{color:"#1CC31C",text:"o"},{color:"#0EB50E",text:"o"},{color:"#00A800",text:"k"}],italic:false,text:""}

data modify storage pandamium:dictionary hex_colour_segments set value ["00","01","02","03","04","05","06","07","08","09","0A","0B","0C","0D","0E","0F","10","11","12","13","14","15","16","17","18","19","1A","1B","1C","1D","1E","1F","20","21","22","23","24","25","26","27","28","29","2A","2B","2C","2D","2E","2F","30","31","32","33","34","35","36","37","38","39","3A","3B","3C","3D","3E","3F","40","41","42","43","44","45","46","47","48","49","4A","4B","4C","4D","4E","4F","50","51","52","53","54","55","56","57","58","59","5A","5B","5C","5D","5E","5F","60","61","62","63","64","65","66","67","68","69","6A","6B","6C","6D","6E","6F","70","71","72","73","74","75","76","77","78","79","7A","7B","7C","7D","7E","7F","80","81","82","83","84","85","86","87","88","89","8A","8B","8C","8D","8E","8F","90","91","92","93","94","95","96","97","98","99","9A","9B","9C","9D","9E","9F","A0","A1","A2","A3","A4","A5","A6","A7","A8","A9","AA","AB","AC","AD","AE","AF","B0","B1","B2","B3","B4","B5","B6","B7","B8","B9","BA","BB","BC","BD","BE","BF","C0","C1","C2","C3","C4","C5","C6","C7","C8","C9","CA","CB","CC","CD","CE","CF","D0","D1","D2","D3","D4","D5","D6","D7","D8","D9","DA","DB","DC","DD","DE","DF","E0","E1","E2","E3","E4","E5","E6","E7","E8","E9","EA","EB","EC","ED","EE","EF","F0","F1","F2","F3","F4","F5","F6","F7","F8","F9","FA","FB","FC","FD","FE","FF"]
data modify storage pandamium:dictionary hex_digit_values set value {"0":0,"1":1,"2":2,"3":3,"4":4,"5":5,"6":6,"7":7,"8":8,"9":9,"a":10,"A":10,"b":11,"B":11,"c":12,"C":12,"d":13,"D":13,"e":14,"E":14,"f":15,"F":15}

data modify storage pandamium:dictionary alphanumeric_allowed set value ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","1","2","3","4","5","6","7","8","9","0","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","_"]
data modify storage pandamium:dictionary alphanumeric_replacements set value [\
	{character:"a",replace:["à","á","â","ã","ä","å","ā","ą","ª","а"]},\
	{character:"b",replace:["β","б","Ъ","ъ","ь","Ь"]},\
	{character:"c",replace:["ç","ć","č","¢","с"]},\
	{character:"d",replace:["ð","ɖ","đ","ɗ","д"]},\
	{character:"e",replace:["è","é","ê","ë","ē","ę","ë"]},\
	{character:"f",replace:["ф"]},\
	{character:"g",replace:["ğ","ģ","г"]},\
	{character:"h",replace:["ħ","и","й","н"]},\
	{character:"i",replace:["ì","í","î","ï","ī","ı"]},\
	{character:"k",replace:["ķ","ĸ","к"]},\
	{character:"l",replace:["ļ","ł"]},\
	{character:"m",replace:["µ","м"]},\
	{character:"n",replace:["ñ","ń","ņ","ŋ","л","Л","П"]},\
	{character:"o",replace:["ò","ó","ô","õ","ö","ø","ō","º","о"]},\
	{character:"p",replace:["п","р"]},\
	{character:"r",replace:["ŗ"]},\
	{character:"s",replace:["ś","š","ș","ş"]},\
	{character:"t",replace:["ț","ŧ","т"]},\
	{character:"u",replace:["ù","ú","û","ü","ū"]},\
	{character:"w",replace:["ш","щ"]},\
	{character:"x",replace:["х"]},\
	{character:"y",replace:["ý","ÿ","у","ч"]},\
	{character:"z",replace:["ź","ž","ʐ","ż"]},\
	{character:"A",replace:["À","Á","Â","Ã","Ä","Å","Ā","Ą","А"]},\
	{character:"B",replace:["Β","Б","в","В"]},\
	{character:"C",replace:["Ç","Ć","Č","©","С"]},\
	{character:"D",replace:["Ð","Ɖ","Đ","Ɗ","Д"]},\
	{character:"E",replace:["È","É","Ê","Ë","Ē","Ę","Ë"]},\
	{character:"F",replace:["Ф"]},\
	{character:"G",replace:["Ğ","Ģ","Ģ","Г"]},\
	{character:"H",replace:["Ħ","И","Й","Н"]},\
	{character:"I",replace:["Ì","Í","Î","Ï","Ī"]},\
	{character:"K",replace:["Ķ","К"]},\
	{character:"L",replace:["Ļ","Ł"]},\
	{character:"M",replace:["М"]},\
	{character:"N",replace:["Ñ","Ń","Ņ","Ŋ"]},\
	{character:"O",replace:["Ò","Ó","Ô","Õ","Ö","Ø","Ō","О"]},\
	{character:"P",replace:["₽","₱","Р"]},\
	{character:"R",replace:["Ŗ","®","Я","я"]},\
	{character:"S",replace:["Ś","Š","Ș"]},\
	{character:"T",replace:["Ț","Ŧ","Т"]},\
	{character:"U",replace:["Ù","Ú","Û","Ü","Ū"]},\
	{character:"W",replace:["Ш","Щ"]},\
	{character:"X",replace:["Х","ж","Ж"]},\
	{character:"Y",replace:["Ý","Ÿ","¥","У","Ч"]},\
	{character:"Z",replace:["Ź","Ž","Ż"]},\
	{character:"3",replace:["з","З","э","Э"]},\
	{character:"ae",replace:["æ"]},\
	{character:"oe",replace:["œ"]},\
	{character:"ss",replace:["ß"]},\
	{character:"th",replace:["þ"]},\
	{character:"AE",replace:["Æ"]},\
	{character:"OE",replace:["Œ"]},\
	{character:"SS",replace:["ẞ"]},\
	{character:"TH",replace:["Þ"]},\
	{character:"",replace:["'","`"]}\
]

data modify storage pandamium:dictionary flair.flairs set value [{text:"☻"},{text:"💎"},{text:"😎"},{text:"✨"},{text:"💯"},{text:"☠"},{text:"👍"},{text:"🎲"},{text:"🔥"},{text:"🚀"},{text:"🦋"},{text:"☀"},{text:"☽"},{text:"💥"},{text:"🌌"},{text:"🌼"},{text:"🌷"},{text:"♬"},{text:"♪"},{text:"💩"},{text:"🏃"},{text:"👁"},{text:"🌊"},{text:"⌛"},{text:"⚡"},{text:"☁"},{text:"☂"},{text:"❄",font:"minecraft:uniform"},{text:"☃"},{text:"☄"},{text:"💤"},{text:"🫧"},{text:"🐚"},{text:"🍬"},{text:"🍭"},{text:"🍪"},{text:"🍦"},{text:"🍕"},{text:"🍖"},{text:"✂"},{text:"⚔"},{text:"🗡"},{text:"⛏"},{text:"🪓"},{text:"🧪"},{text:"⚗"},{text:"🧋"},{text:"☕"},{text:"🍵"},{text:"🍸"},{text:"🍹"},{text:"🍻"},{text:"🥂"},{text:"🥤"},{text:"🥛"},{text:"🎂"},{text:"🎈"},{text:"💐"},{text:"🎁"},{text:"🕯"},{text:"🌈"},{text:"🎉"},{text:"🎆"},{text:"⭐"},{text:"✰"},{text:"🌟"},{text:"🌠"},{text:"❤"},{text:"💔"},{text:"💕"},{text:"💙"},{text:"💚"},{text:"💝"},{text:"💓"},{text:"❥"},{text:"🫶"},{text:"💘"},{text:"🛠"},{text:"🎃"},{text:"🕸"},{text:"🕷"},{text:"🪦"},{text:"⚰"},{text:"👻"},{text:"🤡"},{text:"🦇"},{text:"🔪"},{text:"😱"},{text:"🎮"},{text:"🎧"},{text:"🛸"},{text:"🌏"},{text:"🐈"},{text:"🌵"},{text:"🌹"},{text:"ඞ"},{text:"▎",color:"#E40303",extra:[{text:"▎",color:"#FF8C00"},{text:"▎",color:"#FFED00"},{text:"▎",color:"#008026"},{text:"▎",color:"#24408E"},{text:"▎",color:"#732982"}],custom:1b},{text:"▍",color:"#5BCEFA",extra:[{text:"▍",color:"#F5A9B8"},{text:"▍",color:"#FFFFFF"},{text:"▍",color:"#F5A9B8"},{text:"▍",color:"#5BCEFA"}],custom:1b},{text:"▋",color:"#FCF434",extra:[{text:"▋",color:"#FFFFFF"},{text:"▋",color:"#9C59D1"},{text:"▋",color:"#2C2C2C"}],custom:1b},{text:"▉",color:"#D60270",extra:[{text:"▋",color:"#9B4F96"},{text:"▉",color:"#0038A8"}],custom:1b},{text:"▉",color:"#D60270",extra:[{text:"▉",color:"#FFD800"},{text:"▉",color:"#21B1FF"}],custom:1b},{text:"▍",color:"#D42C00",extra:[{text:"▍",color:"#FD9855"},{text:"▍",color:"#FFFFFF"},{text:"▍",color:"#D161A2"},{text:"▍",color:"#A20161"}],custom:1b},{text:"▍",color:"#078D70",extra:[{text:"▍",color:"#98E8C1"},{text:"▍",color:"#FFFFFF"},{text:"▍",color:"#7BADE2"},{text:"▍",color:"#3D1A78"}],custom:1b},{text:"▋",color:"#000000",extra:[{text:"▋",color:"#A3A3A3"},{text:"▋",color:"#FFFFFF"},{text:"▋",color:"#800080"}],custom:1b},{text:"▍",color:"#3DA542",extra:[{text:"▍",color:"#A7D379"},{text:"▍",color:"#FFFFFF"},{text:"▍",color:"#A9A9A9"},{text:"▍",color:"#000000"}],custom:1b},{text:"🏹"},{text:"⚓"},{text:"🧭"},{text:"🧬"},{text:"🏴"},{text:"🌺"},{text:"💣"},{text:"🪝"},{text:"🩻"},{text:"🔑"},{text:"🍏"},{text:"🐶"},{text:"❇"},{text:"𜱲"}]

data modify storage pandamium:dictionary month_names set value {1: "January", 2: "February", 3: "March", 4: "April", 5: "May", 6: "June", 7: "July", 8: "August", 9: "September", 10: "October", 11: "November", 12: "December"}

data modify storage pandamium:dictionary json_character_to_function set value [\
	{character:"{",function:"open_curly_bracket"},\
	{character:"}",function:"close_curly_bracket"},\
	{character:"[",function:"open_square_bracket"},\
	{character:"]",function:"close_square_bracket"},\
	{character:'"',function:"quote_mark"},\
	{character:':',function:"colon"},\
	{character:',',function:"comma"},\
	{character:'t',function:"t"},\
	{character:'f',function:"f"},\
	{character:'0',function:"numeric"},\
	{character:'1',function:"numeric"},\
	{character:'2',function:"numeric"},\
	{character:'3',function:"numeric"},\
	{character:'4',function:"numeric"},\
	{character:'5',function:"numeric"},\
	{character:'6',function:"numeric"},\
	{character:'7',function:"numeric"},\
	{character:'8',function:"numeric"},\
	{character:'9',function:"numeric"},\
	{character:'-',function:"numeric"},\
	{character:'.',function:"numeric"}\
]

data modify storage pandamium:dictionary leaderboards.place_reward_credits set value {1: 50, 2: 45, 3: 40, 4: 35, 5: 30, 6: 25, 7: 25, 8: 25, 9: 25, 10: 25, 11: 20, 12: 20, 13: 20, 14: 20, 15: 20}

data modify storage pandamium:dictionary circled_number_characters set value ["🄋","①","②","③","④","⑤","⑥","⑦","⑧","⑨","⑩","⑪","⑫","⑬","⑭","⑮","⑯","⑰","⑱","⑲","⑳","㉑","㉒","㉓","㉔","㉕","㉖","㉗","㉘","㉙","㉚","㉛","㉜","㉝","㉞","㉟","㊱","㊲","㊳","㊴","㊵","㊶","㊷","㊸","㊹","㊺","㊻","㊼","㊽","㊾","㊿"]
data modify storage pandamium:dictionary circled_number_characters_inverted set value ["⓿","❶","❷","❸","❹","❺","❻","❼","❽","❾","❿","⓫","⓬","⓭","⓮","⓯","⓰","⓱","⓲","⓳","⓴"]
data modify storage pandamium:dictionary subscript_digit_characters set value ["₀","₁","₂","₃","₄","₅","₆","₇","₈","₉"]

data modify storage pandamium:dictionary uppercase_to_lowercase_map set value {A:"a",B:"b",C:"c",D:"d",E:"e",F:"f",G:"g",H:"h",I:"i",J:"j",K:"k",L:"l",M:"m",N:"n",O:"o",P:"p",Q:"q",R:"r",S:"s",T:"t",U:"u",V:"v",W:"w",X:"x",Y:"y",Z:"z",0:"0",1:"1",2:"2",3:"3",4:"4",5:"5",6:"6",7:"7",8:"8",9:"9",_:"_"}
data modify storage pandamium:dictionary lowercase_to_uppercase_map set value {a:"A",b:"B",c:"C",d:"D",e:"E",f:"F",g:"G",h:"H",i:"I",j:"J",k:"K",l:"L",m:"M",n:"N",o:"O",p:"P",q:"Q",r:"R",s:"S",t:"T",u:"U",v:"V",w:"W",x:"X",y:"Y",z:"Z",0:"0",1:"1",2:"2",3:"3",4:"4",5:"5",6:"6",7:"7",8:"8",9:"9",_:"_"}

data modify storage pandamium:dictionary custom_effects_data set value {\
	"april_fools_day_2024": {\
		meta: {\
			update_triggers: ["change_dimension","time_change"],\
			conditions: "if predicate pandamium:datetime/is_april_fools_day if entity @s[predicate=pandamium:in_dimension/the_end,x=0,y=90,z=0,distance=..500]",\
			ignore_milk: true\
		},\
		data: {\
			attribute_modifiers: [\
				{\
					attribute: "minecraft:gravity",\
					id: "reduced_gravity",\
					modifier: "-0.91 add_multiplied_total"\
				},\
				{\
					attribute: "minecraft:safe_fall_distance",\
					id: "increased_safe_fall_distance",\
					modifier: "8 add_value"\
				},\
				{\
					attribute: "minecraft:fall_damage_multiplier",\
					id: "reduced_fall_damage_multiplier",\
					modifier: "-0.5 add_multiplied_total"\
				}\
			],\
			duration: [2024,4,2,0,0,0]\
		}\
	},\
	"super_secret_scale": {\
		meta: {\
			update_triggers: ["every_second"]\
		},\
		data: {\
			attribute_modifiers: [\
				{\
					attribute: "minecraft:scale",\
					id: "random_scale",\
					modifier: "1.0 add_value"\
				}\
			],\
			duration: 1200\
		}\
	}\
}

data modify storage pandamium:dictionary votifier_service_titles set value {\
	"minecraft.global": {text:"Minecraft.Global",hover_event:{action:"show_text",value:[{text:"Click to vote through\n",color:"blue"},{text:"Minecraft.Global",bold:true}]},click_event:{action:"open_url",url:"https://minecraft.global/servers/b559672e-7906-4d17-858b-3c630000a152/vote"}},\
	"TopMinecraftServers": {text:"TopMinecraftServers.org",hover_event:{action:"show_text",value:[{text:"Click to vote through\n",color:"blue"},{text:"TopMinecraftServers.org",bold:true}]},click_event:{action:"open_url",url:"http://topminecraftservers.org/vote/29717"}},\
	"MinecraftServers.org": {text:"MinecraftServers.org",hover_event:{action:"show_text",value:[{text:"Click to vote through\n",color:"blue"},{text:"MinecraftServers.org",bold:true}]},click_event:{action:"open_url",url:"https://minecraftservers.org/vote/562059"}},\
	"MCSL": {text:"Minecraft‐Server‐List.com",hover_event:{action:"show_text",value:[{text:"Click to vote through\n",color:"blue"},{text:"Minecraft‐Server‐List.com",bold:true}]},click_event:{action:"open_url",url:"https://minecraft-server-list.com/server/445164/vote/"}},\
	"FindMCServer": {text:"FindMCServer.com",hover_event:{action:"show_text",value:[{text:"Click to vote through\n",color:"blue"},{text:"FindMCServer.com",bold:true}]},click_event:{action:"open_url",url:"https://findmcserver.com/server/pandamium?vote=true"}}\
}

data modify storage pandamium:dictionary votifier_service_sentence_end set value {\
	"minecraft.global": {text:" at ",extra:[{storage:"pandamium:dictionary",nbt:"votifier_service_titles.'minecraft.global'",interpret:true,color:"aqua"}]},\
	"TopMinecraftServers": {text:" at ",extra:[{storage:"pandamium:dictionary",nbt:"votifier_service_titles.'TopMinecraftServers'",interpret:true,color:"aqua"}]},\
	"MinecraftServers.org": {text:" at ",extra:[{storage:"pandamium:dictionary",nbt:"votifier_service_titles.'MinecraftServers.org'",interpret:true,color:"aqua"}]},\
	"MCSL": {text:" at ",extra:[{storage:"pandamium:dictionary",nbt:"votifier_service_titles.'MCSL'",interpret:true,color:"aqua"}]},\
	"FindMCServer": {text:" at ",extra:[{storage:"pandamium:dictionary",nbt:"votifier_service_titles.'FindMCServer'",interpret:true,color:"aqua"}]},\
	"pandamium-admin": ""\
}

# escape single-quotes (\\' instead of '; or \\\' instead of \')
data modify storage pandamium:dictionary particle_trail_types set value {\
	1: {name: "Glint", command: "execute if predicate pandamium:player/particles/produce_movement_trail run particle minecraft:composter ~ ~0.25 ~ 0.5 0.4 0.5 0 1", projectile_command: "particle minecraft:happy_villager ~ ~ ~ 0 0 0 0 1 force"},\
	2: {name: "Dragon Breath", command: "execute if predicate pandamium:player/particles/produce_movement_trail if predicate pandamium:periodic_tick/5t run particle minecraft:dragon_breath ~ ~0.5 ~ 0.4 0.4 0.4 0.01 2", projectile_command: "particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0 1 force"},\
	3: {name: "End Rod", command: "execute if predicate pandamium:player/particles/produce_movement_trail if predicate pandamium:periodic_tick/5t run particle minecraft:end_rod ~ ~0.5 ~ 0.4 0.4 0.4 0 2", projectile_command: "particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force"},\
	4: {name: "Flames", command: "execute if predicate pandamium:player/particles/produce_movement_trail if predicate pandamium:periodic_tick/5t run particle minecraft:flame ~ ~0.5 ~ 0.4 0.4 0.4 0 2", projectile_command: "particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force"},\
	5: {name: "Music Notes", command: "execute if predicate pandamium:player/particles/produce_movement_trail if predicate pandamium:periodic_tick/5t run particle minecraft:note ~ ~0.5 ~ 0.4 0.4 0.4 2 1", projectile_command: "particle minecraft:note ~ ~ ~ 0 0 0 2 1"},\
	6: {name: "Soul Fire", command: "execute if predicate pandamium:player/particles/produce_movement_trail if predicate pandamium:periodic_tick/5t run particle minecraft:soul_fire_flame ~ ~0.5 ~ 0.4 0.4 0.4 0 2", projectile_command: "particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0 1 force"},\
	7: {name: "Souls", command: "execute if predicate pandamium:player/particles/produce_movement_trail if predicate pandamium:periodic_tick/5t run particle minecraft:soul ~ ~0.5 ~ 0.4 0.4 0.4 0 1", projectile_command: "particle minecraft:soul ~ ~ ~ 0 0 0 0 1 force"},\
	8: {name: "Hearts", command: "execute if predicate pandamium:player/particles/produce_movement_trail if predicate pandamium:periodic_tick/5t run function pandamium:impl/particles/reference/heart", projectile_command: "particle minecraft:heart ~ ~ ~ 0 0 0 0 1 force"},\
	9: {name: "Angry Clouds", command: "execute if predicate pandamium:player/particles/produce_movement_trail if predicate pandamium:periodic_tick/5t run function pandamium:impl/particles/reference/angry_villager", projectile_command: "particle minecraft:angry_villager ~ ~ ~ 0 0 0 0 1 force"},\
	10: {name: "Witch", command: "execute if predicate pandamium:player/particles/produce_movement_trail if predicate pandamium:periodic_tick/5t run particle minecraft:witch ~ ~0.5 ~ 0.3 0.5 0.3 0 3", projectile_command: "particle minecraft:witch ~ ~ ~ 0 0 0 0 1 force"},\
	11: {name: "Crit Hits", command: "execute if predicate pandamium:player/particles/produce_movement_trail rotated ~ 0 run particle minecraft:crit ^ ^0.3 ^-0.5 0.4 0.4 0.4 0.1 1", projectile_command: "particle minecraft:crit ~ ~ ~ 0 0 0 0 1 force"},\
	12: {name: "Firework Sparks", command: "execute if predicate pandamium:player/particles/produce_movement_trail if predicate pandamium:periodic_tick/5t run particle minecraft:instant_effect ~ ~0.3 ~ 0.3 0.3 0.3 0 2", projectile_command: "particle minecraft:instant_effect ~ ~ ~ 0 0 0 0 1 force"},\
	13: {name: "Void Fog", command: "execute if predicate pandamium:player/particles/produce_movement_trail run particle minecraft:mycelium ~ ~0.5 ~ 0.3 0.4 0.3 0 1", projectile_command: "particle minecraft:mycelium ~ ~ ~ 0 0 0 0 1 force"},\
	14: {name: "Totem of Undying", command: "execute if predicate pandamium:player/particles/produce_movement_trail run particle minecraft:totem_of_undying ~ ~0.5 ~ 0.3 0.4 0.3 0.1 1", projectile_command: "particle minecraft:totem_of_undying ~ ~ ~ 0 0 0 0 1 force"},\
	15: {name: "Redstone Dust", command: "execute if predicate pandamium:player/particles/produce_movement_trail run particle minecraft:dust{color:[1f,0f,0f],scale:0.6f} ~ ~0.5 ~ 0.3 0.4 0.3 0.2 1", projectile_command: "particle minecraft:dust{color:[1f,0f,0f],scale:0.6f} ~ ~ ~ 0 0 0 0 1 force"},\
	16: {name: "Popping Bubbles", command: "execute if predicate pandamium:player/particles/produce_movement_trail run particle minecraft:bubble_pop ~ ~0.4 ~ 0.3 0.4 0.3 0 1", projectile_command: "particle minecraft:bubble_pop ~ ~ ~ 0 0 0 0 1 force"},\
	17: {name: "Ash", command: "execute if predicate pandamium:player/particles/produce_movement_trail run particle minecraft:ash ~ ~1 ~ 0.3 0.4 0.3 0.1 1", projectile_command: "particle minecraft:ash ~ ~ ~ 0 0 0 0 1 force"},\
	18: {name: "White Ash", command: "execute if predicate pandamium:player/particles/produce_movement_trail run particle minecraft:white_ash ~ ~1 ~ 0.3 0.4 0.3 0.1 1", projectile_command: "particle minecraft:white_ash ~ ~ ~ 0 0 0 0 1 force"},\
	19: {name: "Crying Obsidian", command: "execute if predicate pandamium:player/particles/produce_movement_trail if predicate pandamium:periodic_tick/5t run particle minecraft:dripping_obsidian_tear ~ ~0.5 ~ 0.5 1 0.5 0 1", projectile_command: "particle minecraft:dripping_obsidian_tear ~ ~ ~ 0 0 0 0 1 force"},\
	20: {name: "Enchant Glyphs", command: "execute if predicate pandamium:player/particles/produce_movement_trail run particle minecraft:enchant ~ ~0.4 ~ 0.4 0.4 0.4 0.1 2", projectile_command: "particle minecraft:enchant ~ ~ ~ 0 0 0 0 1 force"},\
	21: {name: "Rainbow", command: "execute if predicate pandamium:player/particles/produce_movement_trail run function pandamium:impl/particles/reference/rainbow with storage pandamium:templates particles", projectile_command: "function pandamium:impl/particles/reference/rainbow with storage pandamium:templates particles"},\
	22: {name: "Smoke", command: "execute if predicate pandamium:player/particles/produce_movement_trail run particle minecraft:smoke ~ ~0.25 ~ 0.3 0.3 0.3 0.05 1", projectile_command: "particle minecraft:smoke ~ ~ ~ 0 0 0 0 1 force"},\
	23: {name: "Snowflakes", command: "execute if predicate pandamium:player/particles/produce_movement_trail run particle minecraft:snowflake ~ ~0.25 ~ 0.2 0.2 0.2 0.05 1", projectile_command: "particle minecraft:snowflake ~ ~ ~ 0 0 0 0 1 force"},\
	24: {name: "Campfire Smoke", command: "execute if predicate pandamium:player/particles/produce_movement_trail if predicate pandamium:periodic_tick/5t run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.3 0.5 0.3 0.01 1", projectile_command: "particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 0 1 force"},\
	25: {name: "Conduit Eyes", command: "execute if predicate pandamium:player/particles/produce_movement_trail run particle minecraft:nautilus ~ ~0.25 ~ 0.5 0.4 0.5 0.1 1", projectile_command: "particle minecraft:nautilus ~ ~ ~ 0 0 0 0 1 force"},\
	26: {name: "Nectar", command: "execute if predicate pandamium:player/particles/produce_movement_trail run particle minecraft:falling_nectar ~ ~0.25 ~ 0.3 0.4 0.3 0.1 1", projectile_command: "particle minecraft:falling_nectar ~ ~ ~ 0 0 0 0 1 force"},\
	27: {name: "Warped Spores", command: "execute if predicate pandamium:player/particles/produce_movement_trail run particle minecraft:warped_spore ~ ~0.25 ~ 0 0 0 0 1", projectile_command: "particle minecraft:warped_spore ~ ~ ~ 0 0 0 0 1 force"},\
	28: {name: "Squid Inks", command: "execute if predicate pandamium:player/particles/produce_movement_trail run function pandamium:impl/particles/reference/squid_ink", projectile_command: "particle minecraft:squid_ink ~ ~ ~ 0 0 0 0 1 force"},\
	29: {name: "Lava Drips", command: "execute if predicate pandamium:player/particles/produce_movement_trail run particle minecraft:falling_lava ~ ~0.5 ~ 0.2 0.4 0.2 0.05 1", projectile_command: "particle minecraft:falling_lava ~ ~ ~ 0 0 0 0 1 force"},\
	30: {name: "Sculk Sensor", command: "execute if predicate pandamium:player/particles/produce_movement_trail run particle minecraft:dust_color_transition{from_color:[0.199f,0.871f,0.918f],to_color:[1f,0f,0f],scale:1f} ~ ~0.25 ~ 0.3 0.4 0.3 0.05 1", projectile_command: "particle minecraft:dust_color_transition{from_color:[0.199f,0.871f,0.918f],to_color:[1f,0f,0f],scale:1f} ~ ~ ~ 0 0 0 0 1 force"},\
	31: {name: "Glow", command: "execute if predicate pandamium:player/particles/produce_movement_trail run particle minecraft:glow ~ ~0.25 ~ 0.2 0.2 0.2 0.01 1", projectile_command: "particle minecraft:glow ~ ~ ~ 0 0 0 0 1 force"},\
	32: {name: "Glow Ink", command: "execute if predicate pandamium:player/particles/produce_movement_trail run function pandamium:impl/particles/reference/glow_squid_ink", projectile_command: "particle minecraft:glow_squid_ink ~ ~ ~ 0 0 0 0 1 force"},\
	33: {name: "Blossom Spores", command: "execute if predicate pandamium:player/particles/produce_movement_trail if predicate pandamium:periodic_tick/5t run particle minecraft:spore_blossom_air ~ ~0.25 ~ 0.1 0.3 0.1 0 1", projectile_command: "particle minecraft:spore_blossom_air ~ ~ ~ 0 0 0 0 1 force"},\
	34: {name: "Wax On", command: "execute if predicate pandamium:player/particles/produce_movement_trail run function pandamium:impl/particles/reference/wax_on", projectile_command: "particle minecraft:wax_on ~ ~ ~ 0 0 0 0 1 force"},\
	35: {name: "Wax Off", command: "execute if predicate pandamium:player/particles/produce_movement_trail run function pandamium:impl/particles/reference/wax_off", projectile_command: "particle minecraft:wax_off ~ ~ ~ 0 0 0 0 1 force"},\
	36: {name: "Light Bulb", command: "execute if predicate pandamium:periodic_tick/1s run function pandamium:impl/particles/reference/light_bulb", projectile_command: "function pandamium:impl/particles/reference/light_bulb_projectile"},\
	37: {name: "Electric Sparks", command: "execute if predicate pandamium:player/particles/produce_movement_trail run function pandamium:impl/particles/reference/electric_spark", projectile_command: "particle minecraft:electric_spark ~ ~ ~ 0 0 0 0 1 force"},\
	38: {name: "Copper Scrape", command: "execute if predicate pandamium:player/particles/produce_movement_trail run function pandamium:impl/particles/reference/scrape", projectile_command: "particle minecraft:scrape ~ ~ ~ 0 0 0 0 1 force"},\
	39: {name: "Sculk Souls", command: "execute if predicate pandamium:player/particles/produce_movement_trail if predicate pandamium:periodic_tick/5t run particle minecraft:sculk_soul ~ ~0.25 ~ 0.4 0.4 0.4 0 1", projectile_command: "particle minecraft:sculk_soul ~ ~ ~ 0 0 0 0 1 force"},\
	40: {name: "Sculk Bubbles", command: "execute if predicate pandamium:player/particles/produce_movement_trail run particle minecraft:sculk_charge_pop ~ ~0.4 ~ 0.1 0.3 0.1 0.05 1", projectile_command: "particle minecraft:sculk_charge_pop ~ ~ ~ 0 0 0 0 1 force"},\
	41: {name: "Sculk Charge", command: "execute if predicate pandamium:player/particles/produce_movement_trail run particle minecraft:sculk_charge{roll:0f} ~ ~0.4 ~ 0.1 0.3 0.1 0.05 1", projectile_command: "particle minecraft:sculk_charge{roll:0f} ~ ~ ~ 0 0 0 0 1 force"},\
	42: {name: "Cherry Leaves", command: "execute if predicate pandamium:player/particles/produce_movement_trail if predicate pandamium:periodic_tick/5t run particle minecraft:cherry_leaves ~ ~0.6 ~ 0.3 0.3 0.3 0 1", projectile_command: "particle minecraft:cherry_leaves ~ ~ ~ 0 0 0 0 1 force"},\
	43: {name: "Dust Plumes", command: "execute if predicate pandamium:player/particles/produce_movement_trail if predicate pandamium:on_ground run particle minecraft:dust_plume ~ ~ ~ 0.1 0 0.1 0 1", projectile_command: "particle minecraft:dust_plume ~ ~ ~ 0 0 0 0 1 force"},\
	44: {name: "Trial Embers", command: "execute if predicate pandamium:player/particles/produce_movement_trail rotated ~ 0 run particle minecraft:trial_spawner_detection ^ ^ ^-0.3 0.3 0 0.3 0.02 1", projectile_command: "particle minecraft:trial_spawner_detection ~ ~ ~ 0 0 0 0 1 force"},\
	45: {name: "Vault Connection", command: "execute if predicate pandamium:player/particles/produce_movement_trail rotated ~ 0 run particle minecraft:vault_connection ~ ~1 ~ 0.25 0.75 0.25 1 1", projectile_command: "particle minecraft:vault_connection ~ ~ ~ 0 0 0 0 1 force"},\
	46: {name: "Pale Oak Leaves", command: "execute if predicate pandamium:player/particles/produce_movement_trail if predicate pandamium:periodic_tick/5t run particle minecraft:pale_oak_leaves ~ ~0.6 ~ 0.3 0.3 0.3 0 1", projectile_command: "particle minecraft:pale_oak_leaves ~ ~ ~ 0 0 0 0 1 force"},\
	47: {name: "Ominous Trial Embers", command: "execute if predicate pandamium:player/particles/produce_movement_trail rotated ~ 0 run particle minecraft:trial_spawner_detection_ominous ^ ^ ^-0.3 0.3 0 0.3 0.02 1", projectile_command: "particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0 0 0 0 1 force"},\
	48: {name: "Ominous Spawning", command: "execute if predicate pandamium:player/particles/produce_movement_trail run particle minecraft:ominous_spawning ~ ~0.3 ~ 0.3 0.3 0.3 0.1 1", projectile_command: "particle minecraft:ominous_spawning ~ ~ ~ 0 0 0 0 1 force"},\
	49: {name: "Green Leaves", command: "execute if predicate pandamium:player/particles/produce_movement_trail if predicate pandamium:periodic_tick/5t run particle minecraft:tinted_leaves{color:[0,1,0,1]} ~ ~0.8 ~ 0.3 0.3 0.3 0 2", projectile_command: "particle minecraft:tinted_leaves{color:[0,1,0,1]} ~ ~ ~ 0 0 0 0 1 force"},\
	54: {name: "Autumn Leaves", command: "execute if predicate pandamium:player/particles/produce_movement_trail if predicate pandamium:periodic_tick/5t run function pandamium:impl/particles/reference/autumn_leaves", projectile_command: "function pandamium:impl/particles/reference/autumn_leaves_projectile"},\
	55: {name: "Fireflies", command: "execute if predicate pandamium:player/particles/produce_movement_trail if predicate pandamium:periodic_tick/5t run particle minecraft:firefly ~ ~0.6 ~", projectile_command: "particle minecraft:firefly ~ ~ ~ 0 0 0 0 1 force"},\
	99: {name: "Nether Portal", command: "execute if predicate pandamium:player/particles/produce_movement_trail run particle minecraft:portal ~ ~0.1 ~ 0.3 0.3 0.3 0.1 2", projectile_command: "particle minecraft:portal ~ ~ ~ 0 0 0 0 1 force"},\
	\
	50: {name: "Hamster Wheel", command: "particle minecraft:elder_guardian force @s"},\
	51: {name: "Pepé", command: "execute positioned ~ ~-0.2 ~ anchored eyes run function pandamium:impl/particles/custom_trails/head/pepe_stare"},\
	52: {name: "Technoblade", command: "execute positioned ~ ~-0.2 ~ anchored eyes run function pandamium:impl/particles/custom_trails/head/technoblade"},\
	53: {name: "Shrek", command: "execute positioned ~ ~-0.2 ~ anchored eyes run function pandamium:impl/particles/custom_trails/head/shrek"},\
	\
	64: {name: "Halo", command: "execute positioned ~ ~-0.2 ~ anchored eyes run function pandamium:impl/particles/custom_trails/head/halo"},\
	65: {name: "Horns", command: "execute positioned ~ ~-0.2 ~ anchored eyes run function pandamium:impl/particles/custom_trails/head/devil_horns"},\
	66: {name: "Olexorus", command: "execute positioned ~ ~-0.2 ~ anchored eyes run function pandamium:impl/particles/custom_trails/head/olex"},\
	67: {name: "Tears", command: "execute positioned ~ ~-0.2 ~ anchored eyes run function pandamium:impl/particles/custom_trails/head/tears"},\
	68: {name: "Blush", command: "function pandamium:impl/particles/reference/blush"},\
	69: {name: "Axolotl Gills", command: "execute positioned ~ ~-0.2 ~ anchored eyes run function pandamium:impl/particles/custom_trails/head/axolotl_gills"},\
	70: {name: "Warden Ears", command: "execute positioned ~ ~-0.2 ~ anchored eyes run function pandamium:impl/particles/custom_trails/head/warden_ears"},\
	71: {name: "Glow Squid", command: "execute positioned ~ ~-0.2 ~ anchored eyes run function pandamium:impl/particles/custom_trails/head/glow_squid"},\
	72: {name: "Goat Ears and Horns", command: "execute positioned ~ ~-0.2 ~ anchored eyes run function pandamium:impl/particles/custom_trails/head/goat_ears_and_horns"},\
	73: {name: "Angel", command: "function pandamium:impl/particles/reference/angel_wings_and_halo"},\
	74: {name: "Devil", command: "function pandamium:impl/particles/reference/devil_wings_and_devil_horns"},\
	75: {name: "Phoenix", command: "function pandamium:impl/particles/reference/phoenix_wings_and_phoenix_ears"},\
	76: {name: "Arrow", command: "execute positioned ~ ~-0.2 ~ anchored eyes run function pandamium:impl/particles/custom_trails/head/arrow"},\
	77: {name: "Exclamation", command: "execute positioned ~ ~-0.2 ~ anchored eyes run function pandamium:impl/particles/custom_trails/head/exclamation_mark"},\
	78: {name: "Question", command: "execute positioned ~ ~-0.2 ~ anchored eyes run function pandamium:impl/particles/custom_trails/head/question_mark"},\
	79: {name: "Storm", command: "function pandamium:impl/particles/reference/storm"},\
	80: {name: "Lava Storm", command: "function pandamium:impl/particles/reference/lava_storm"},\
	81: {name: "Frog", command: "execute positioned ~ ~-0.2 ~ anchored eyes run function pandamium:impl/particles/reference/frog"},\
	82: {name: "Allay Wings", command: "function pandamium:impl/particles/reference/allay_wings"},\
	83: {name: "Crown", command: "execute positioned ~ ~-0.2 ~ anchored eyes run function pandamium:impl/particles/custom_trails/head/crown"},\
	84: {name: "Phoenix Ears", command: "execute positioned ~ ~-0.2 ~ anchored eyes run function pandamium:impl/particles/custom_trails/head/phoenix_horns"},\
	85: {name: "Sniffer Ears", command: "execute positioned ~ ~-0.2 ~ anchored eyes run function pandamium:impl/particles/custom_trails/head/sniffer_ears"},\
	86: {name: "Camel Ears", command: "execute positioned ~ ~-0.2 ~ anchored eyes run function pandamium:impl/particles/custom_trails/head/camel_ears"},\
	87: {name: "Vex Wings", command: "function pandamium:impl/particles/reference/vex_wings"},\
	88: {name: "Dragon Wings", command: "function pandamium:impl/particles/reference/dragon_wings"},\
	89: {name: "Phantom Wings", command: "function pandamium:impl/particles/reference/phantom_wings"},\
	90: {name: "Sundroid", command: "execute positioned ~ ~-0.2 ~ anchored eyes run function pandamium:impl/particles/custom_trails/head/sundroid"},\
	91: {name: "Supporter Star", command: "execute positioned ~ ~-0.2 ~ anchored eyes run function pandamium:impl/particles/custom_trails/head/donator_star"},\
	92: {name: "Helper Shield", command: "execute positioned ~ ~-0.2 ~ anchored eyes run function pandamium:impl/particles/custom_trails/head/helper_shield"},\
	93: {name: "Moderator Shield", command: "execute positioned ~ ~-0.2 ~ anchored eyes run function pandamium:impl/particles/custom_trails/head/mod_shield"},\
	94: {name: "Sr. Mod Shield", command: "execute positioned ~ ~-0.2 ~ anchored eyes run function pandamium:impl/particles/custom_trails/head/srmod_shield"},\
	95: {name: "Admin Shield", command: "execute positioned ~ ~-0.2 ~ anchored eyes run function pandamium:impl/particles/custom_trails/head/admin_shield"},\
	96: {name: "Owner Shield", command: "execute positioned ~ ~-0.2 ~ anchored eyes run function pandamium:impl/particles/custom_trails/head/owner_shield"},\
	97: {name: "VIP Gem", command: "execute positioned ~ ~-0.2 ~ anchored eyes run function pandamium:impl/particles/custom_trails/head/vip_gem"},\
	98: {name: "Plumb Bob", command: "execute positioned ~ ~-0.2 ~ anchored eyes run function pandamium:impl/particles/custom_trails/head/plumb_bob"},\
	100: {name: "Santa Hat", command: "function pandamium:impl/particles/reference/santa_hat"},\
	101: {name: "Decorated Tree", command: "execute positioned ~ ~-0.2 ~ anchored eyes run function pandamium:impl/particles/custom_trails/head/christmas_tree"},\
	102: {name: "Reindeer Antlers", command: "execute positioned ~ ~-0.2 ~ anchored eyes run function pandamium:impl/particles/custom_trails/head/reindeer_antlers"},\
}
