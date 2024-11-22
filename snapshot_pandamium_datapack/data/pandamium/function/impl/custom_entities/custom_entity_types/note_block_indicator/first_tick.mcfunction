execute unless block ~ ~ ~ note_block run return run function pandamium:utils/kill_entity_stack_discretely

data merge entity @s {transformation:{scale:[0.5f,0.5f,0.5f],translation:[0f,-0.1f,0.9f]}}

tag @s add this
execute align xyz positioned ~.5 ~.5 ~.5 unless entity @e[type=text_display,tag=pandamium.custom_entity.type.note_block_indicator,tag=!this,distance=..1,limit=1] run data merge entity @s {interpolation_duration:20,start_interpolation:0}
execute align xyz positioned ~.5 ~.5 ~.5 run kill @e[type=text_display,tag=pandamium.custom_entity.type.note_block_indicator,tag=!this,distance=..1,limit=1]
tag @s remove this

execute if block ~ ~ ~ note_block[note=0] run return run data modify entity @s text set value '{"text":"Low F♯/G♭","color":"#77D700"}'
execute if block ~ ~ ~ note_block[note=1] run return run data modify entity @s text set value '{"text":"Low G","color":"#95C000"}'
execute if block ~ ~ ~ note_block[note=2] run return run data modify entity @s text set value '{"text":"Low G♯/A♭","color":"#B2A500"}'
execute if block ~ ~ ~ note_block[note=3] run return run data modify entity @s text set value '{"text":"Low A","color":"#CC8600"}'
execute if block ~ ~ ~ note_block[note=4] run return run data modify entity @s text set value '{"text":"Low A♯/B♭","color":"#E26500"}'
execute if block ~ ~ ~ note_block[note=5] run return run data modify entity @s text set value '{"text":"Low B","color":"#F34100"}'
execute if block ~ ~ ~ note_block[note=6] run return run data modify entity @s text set value '{"text":"Low C","color":"#FC1E00"}'
execute if block ~ ~ ~ note_block[note=7] run return run data modify entity @s text set value '{"text":"Low C♯/D♭","color":"#FE000F"}'
execute if block ~ ~ ~ note_block[note=8] run return run data modify entity @s text set value '{"text":"Low D","color":"#F70033"}'
execute if block ~ ~ ~ note_block[note=9] run return run data modify entity @s text set value '{"text":"Low D♯/E♭","color":"#E8005A"}'
execute if block ~ ~ ~ note_block[note=10] run return run data modify entity @s text set value '{"text":"Low E","color":"#CF0083"}'
execute if block ~ ~ ~ note_block[note=11] run return run data modify entity @s text set value '{"text":"Low F","color":"#AE00A9"}'
execute if block ~ ~ ~ note_block[note=12] run return run data modify entity @s text set value '{"text":"Middle F♯/G♭","color":"#8600CC"}'
execute if block ~ ~ ~ note_block[note=13] run return run data modify entity @s text set value '{"text":"High G","color":"#5B00E7"}'
execute if block ~ ~ ~ note_block[note=14] run return run data modify entity @s text set value '{"text":"High G♯/A♭","color":"#2D00F9"}'
execute if block ~ ~ ~ note_block[note=15] run return run data modify entity @s text set value '{"text":"High A","color":"#020AFE"}'
execute if block ~ ~ ~ note_block[note=16] run return run data modify entity @s text set value '{"text":"High A♯/B♭","color":"#0037F6"}'
execute if block ~ ~ ~ note_block[note=17] run return run data modify entity @s text set value '{"text":"High B","color":"#0068E0"}'
execute if block ~ ~ ~ note_block[note=18] run return run data modify entity @s text set value '{"text":"High C","color":"#009ABC"}'
execute if block ~ ~ ~ note_block[note=19] run return run data modify entity @s text set value '{"text":"High C♯/D♭","color":"#00C68D"}'
execute if block ~ ~ ~ note_block[note=20] run return run data modify entity @s text set value '{"text":"High D","color":"#00E958"}'
execute if block ~ ~ ~ note_block[note=21] run return run data modify entity @s text set value '{"text":"High D♯/E♭","color":"#00FC21"}'
execute if block ~ ~ ~ note_block[note=22] run return run data modify entity @s text set value '{"text":"High E","color":"#1FFC00"}'
execute if block ~ ~ ~ note_block[note=23] run return run data modify entity @s text set value '{"text":"High F","color":"#59E800"}'
execute if block ~ ~ ~ note_block[note=24] run return run data modify entity @s text set value '{"text":"High F♯/G♭","color":"#94C100"}'
data modify entity @s text set value '"???"'
