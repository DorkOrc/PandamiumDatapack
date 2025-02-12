# run AS item entity

function pandamium:utils/datetime/get_current_datetime_text
data modify storage pandamium:local functions."pandamium:impl/jail_items/*".lore set value [\
    {\
        color: "gray",\
        italic: false,\
        translate: "pandamium.jail_item.description.1.unknown_thrower",\
        fallback: "Unknown Thrower"\
    },\
    {\
        color: "gray",\
        italic: false,\
        storage: "pandamium:temp",\
        nbt: "datetime_text.date_time",\
        interpret: true\
    },\
    {\
        color: "dark_gray",\
        italic: false,\
        translate: "pandamium.jail_item.description.2",\
        fallback: "Restore lore in The Staff World"\
    }\
]

scoreboard players set <thrower_user_id> variable 0
execute on origin if entity @s[type=player,scores={jailed=1..}] run function pandamium:impl/jail_items/as_thrower

execute unless score <thrower_user_id> variable matches 2.. run tag @s add jail_items.ignore
execute if score <thrower_user_id> variable matches 2.. in pandamium:staff_world run function pandamium:impl/jail_items/do_transfer
