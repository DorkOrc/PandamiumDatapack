execute unless predicate pandamium:player/min_staff_perms/senior_moderator run return run tellraw @s [{color:"dark_red",text:"[Take]"},{color:"red",text:" You do not have permission to use this trigger!"}]

execute if score @s take_enderchest matches 1 run return run function pandamium:impl/take/print_menu/main
execute unless score @s take_enderchest matches 2.. run return run tellraw @s [{color:"dark_red",text:"[Take]"},{color:"red",text:" That is not a valid option!"}]

# select player
scoreboard players operation <id> variable = @s take_enderchest
execute unless entity @a[predicate=pandamium:matches_id,limit=1] run return run tellraw @s [{color:"dark_red",text:"[Take]"},[{color:"red",text:" Could not find a player with ID "},{score:{name:"<id>",objective:"variable"}},"!"]]

# Run
execute as @a[predicate=pandamium:matches_id,limit=1] run function pandamium:player/take_items/enderchest

execute if score <item_count> variable matches 0 run return run \
    tellraw @s [{color:"dark_red",text:"[Take] "},{color:"red",selector:"@a[predicate=pandamium:matches_id,limit=1]"},{color:"red",text:" has no items in their ender chest!"}]
execute if score <item_count> variable matches 1 run return run \
    tellraw @s [{color:"gold",text:"[Take]"},[{color:"yellow",text:" Took "},{bold:true,color:"gold",text:"1"},                                        " item from ", {selector:"@a[predicate=pandamium:matches_id,limit=1]"},"'s ender chest! ",{color:"blue",text:"[→]",hover_event:{action:"show_text",value:[{color:"yellow",text:"Click to teleport to "},{bold:true,text:"Staff World"}]},click_event:{action:"run_command",command:"trigger staff_world set 3"}}]]
# else
    tellraw @s [{color:"gold",text:"[Take]"},[{color:"yellow",text:" Took "},{bold:true,color:"gold",score:{name:"<item_count>",objective:"variable"}}," items from ",{selector:"@a[predicate=pandamium:matches_id,limit=1]"},"'s ender chest! ",{color:"blue",text:"[→]",hover_event:{action:"show_text",value:[{color:"yellow",text:"Click to teleport to "},{bold:true,text:"Staff World"}]},click_event:{action:"run_command",command:"trigger staff_world set 3"}}]]
