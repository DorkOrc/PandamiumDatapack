# arguments: from

data modify storage pandamium:temp results set value []
$data modify storage pandamium:temp results append from $(from)
execute store result score <total> variable if data storage pandamium:temp results[]
execute if score <total> variable matches 0 run tellraw @s {color:"red",text:"No results"}
execute if score <total> variable matches 1.. run data modify storage do:io input set value {storage:"pandamium:temp",nbt:"results[]",separator:"\n"}
execute if score <total> variable matches 1.. run function do:text/flatten
execute if score <total> variable matches 1.. run data modify storage pandamium:temp results_copy_to_clipboard set value {text:"",hover_event:{action:"show_text",value:"Click to copy results to clipboard"},click_event:{action:"copy_to_clipboard",value:""}}
execute if score <total> variable matches 1.. run data modify storage pandamium:temp results_copy_to_clipboard.click_event.value set from storage do:io output
execute if score <total> variable matches 1 run tellraw @s [{storage:"pandamium:temp",nbt:"results_copy_to_clipboard",interpret:true},{storage:"pandamium:temp",nbt:"results[0]"}]
execute if score <total> variable matches 2.. run tellraw @s [{storage:"pandamium:temp",nbt:"results_copy_to_clipboard",interpret:true},{score:{name:"<total>",objective:"variable"}}," results:",{color:"dark_gray",text:"\n• "},{storage:"pandamium:temp",nbt:"results[]",separator:{color:"dark_gray",text:"\n• "}}]
data remove storage pandamium:temp results
data remove storage do:io output
