scoreboard players set <sound> variable 1

execute if score <pose> variable matches -101 store success score <value> variable store success entity @s ShowArms byte 1 unless data storage pandamium:temp pose.nbt{ShowArms:1b}
execute if score <pose> variable matches -101 if score <value> variable matches 1 store success score <returned> variable run tellraw @a[tag=source,limit=1] [{text:"",color:"green"},{text:"[Pose]",color:"dark_green"}," Set target's ",{text:"ShowArms",color:"aqua"}," attribute to ",{text:"True",color:"yellow",bold:true},"!"]
execute if score <pose> variable matches -101 if score <value> variable matches 0 store success score <returned> variable run tellraw @a[tag=source,limit=1] [{text:"",color:"green"},{text:"[Pose]",color:"dark_green"}," Set target's ",{text:"ShowArms",color:"aqua"}," attribute to ",{text:"False",color:"yellow",bold:true},"!"]

execute if score <pose> variable matches -102 store success score <value> variable store success entity @s NoBasePlate byte 1 unless data storage pandamium:temp pose.nbt{NoBasePlate:1b}
execute if score <pose> variable matches -102 if score <value> variable matches 1 store success score <returned> variable run tellraw @a[tag=source,limit=1] [{text:"",color:"green"},{text:"[Pose]",color:"dark_green"}," Set target's ",{text:"NoBasePlate",color:"aqua"}," attribute to ",{text:"True",color:"yellow",bold:true},"!"]
execute if score <pose> variable matches -102 if score <value> variable matches 0 store success score <returned> variable run tellraw @a[tag=source,limit=1] [{text:"",color:"green"},{text:"[Pose]",color:"dark_green"}," Set target's ",{text:"NoBasePlate",color:"aqua"}," attribute to ",{text:"False",color:"yellow",bold:true},"!"]

execute if score <pose> variable matches -103 store success score <value> variable store success entity @s NoGravity byte 1 unless data storage pandamium:temp pose.nbt{NoGravity:1b}
execute if score <pose> variable matches -103 if score <value> variable matches 1 store success score <returned> variable run tellraw @a[tag=source,limit=1] [{text:"",color:"green"},{text:"[Pose]",color:"dark_green"}," Set target's ",{text:"NoGravity",color:"aqua"}," attribute to ",{text:"True",color:"yellow",bold:true},"!"]
execute if score <pose> variable matches -103 if score <value> variable matches 0 store success score <returned> variable run tellraw @a[tag=source,limit=1] [{text:"",color:"green"},{text:"[Pose]",color:"dark_green"}," Set target's ",{text:"NoGravity",color:"aqua"}," attribute to ",{text:"False",color:"yellow",bold:true},"!"]

execute if score <pose> variable matches -104 store success score <value> variable store success entity @s Small byte 1 unless data storage pandamium:temp pose.nbt{Small:1b}
execute if score <pose> variable matches -104 if score <value> variable matches 1 store success score <returned> variable run tellraw @a[tag=source,limit=1] [{text:"",color:"green"},{text:"[Pose]",color:"dark_green"}," Set target's ",{text:"Small",color:"aqua"}," attribute to ",{text:"True",color:"yellow",bold:true},"!"]
execute if score <pose> variable matches -104 if score <value> variable matches 0 store success score <returned> variable run tellraw @a[tag=source,limit=1] [{text:"",color:"green"},{text:"[Pose]",color:"dark_green"}," Set target's ",{text:"Small",color:"aqua"}," attribute to ",{text:"False",color:"yellow",bold:true},"!"]

execute if score <pose> variable matches -105 store success score <value> variable store success entity @s CustomNameVisible byte 1 unless data storage pandamium:temp pose.nbt{CustomNameVisible:1b}
execute if score <pose> variable matches -105 if score <value> variable matches 1 store success score <returned> variable run tellraw @a[tag=source,limit=1] [{text:"",color:"green"},{text:"[Pose]",color:"dark_green"}," Set target's ",{text:"CustomNameVisible",color:"aqua"}," attribute to ",{text:"True",color:"yellow",bold:true},"!"]
execute if score <pose> variable matches -105 if score <value> variable matches 0 store success score <returned> variable run tellraw @a[tag=source,limit=1] [{text:"",color:"green"},{text:"[Pose]",color:"dark_green"}," Set target's ",{text:"CustomNameVisible",color:"aqua"}," attribute to ",{text:"False",color:"yellow",bold:true},"!"]

execute if score <pose> variable matches -106 run function pandamium:triggers/pose/actions/toggle_invisible

execute if score <pose> variable matches -107 store success score <value> variable store success entity @s HasVisualFire byte 1 unless data storage pandamium:temp pose.nbt{HasVisualFire:1b}
execute if score <pose> variable matches -107 if score <value> variable matches 1 store success score <returned> variable run tellraw @a[tag=source,limit=1] [{text:"",color:"green"},{text:"[Pose]",color:"dark_green"}," Set target's ",{text:"HasVisualFire",color:"aqua"}," attribute to ",{text:"True",color:"yellow",bold:true},"!"]
execute if score <pose> variable matches -107 if score <value> variable matches 0 store success score <returned> variable run tellraw @a[tag=source,limit=1] [{text:"",color:"green"},{text:"[Pose]",color:"dark_green"}," Set target's ",{text:"HasVisualFire",color:"aqua"}," attribute to ",{text:"False",color:"yellow",bold:true},"!"]
