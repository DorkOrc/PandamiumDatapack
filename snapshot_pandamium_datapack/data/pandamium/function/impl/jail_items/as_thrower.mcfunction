execute unless score @s id matches 2.. run return fail

scoreboard players operation <thrower_user_id> variable = @s id
tellraw @a[predicate=pandamium:player/min_staff_perms/helper] [{text:"[Staff Info] ",color:"dark_gray"},{selector:"@s",color:"gray"},{text:" threw an item in jail! ",color:"gray"},{text:"[→]",color:"blue",hover_event:{action:"show_text",value:[{text:"Click to teleport to ",color:"blue"},{text:"The Staff World",bold:true}]},click_event:{action:"run_command",command:"trigger staff_world set 5"}}]

function pandamium:utils/get/username
data modify storage pandamium:local functions."pandamium:impl/jail_items/*".lore[0] set value {\
    color: "gray",\
    italic: false,\
    translate: "pandamium.jail_item.description.1",\
    fallback: "Dropped by %s",\
    with: [\
        {\
            storage: "pandamium:temp",\
            nbt: "username",\
        }\
    ]\
}
