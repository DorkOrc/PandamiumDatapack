data modify storage pandamium:local functions."pandamium:triggers/options/*".dialog set value \
{\
    type: "minecraft:confirmation",\
    title: "Pandamium Gameplay Settings",\
    external_title: "Gameplay...",\
    inputs:[\
        {\
            type: "minecraft:single_option",\
            key: "disable_keep_inventory",\
            label: "Keep Inventory On Death",\
            options: [\
                {\
                    id: "0",\
                    display: {translate:"options.on"}\
                },\
                {\
                    id: "1",\
                    display: {translate:"options.off"}\
                }\
            ]\
        },\
        {\
            type: "minecraft:single_option",\
            key: "disable_phantom_spawning",\
            label: "Phantom Spawning",\
            options: [\
                {\
                    id: "0",\
                    display: {translate:"options.on"}\
                },\
                {\
                    id: "1",\
                    display: {translate:"options.off"}\
                }\
            ]\
        },\
        {\
            type: "minecraft:single_option",\
            key: "disable_attack_indicator",\
            label: "Attack Indicator",\
            options: [\
                {\
                    id: "0",\
                    display: {translate:"options.on"}\
                },\
                {\
                    id: "1",\
                    display: {translate:"options.off"}\
                }\
            ]\
        },\
        {\
            type: "minecraft:single_option",\
            key: "sneak_to_sit",\
            label: "Crouch Twice to Sit",\
            options: [\
                {\
                    id: "0",\
                    display: {translate:"options.off"}\
                },\
                {\
                    id: "1",\
                    display: {translate:"options.on"}\
                }\
            ]\
        },\
        {\
            type: "minecraft:single_option",\
            key: "hide_auto_messages",\
            label: {color:"gray",text:"Tips/Reminders"},\
            label_visible: false,\
            options: [\
                {\
                    id: "0",\
                    display: [{color:"gray",text:"Tips/Reminders: "},{translate:"options.on"}," 🔒"]\
                }\
            ]\
        }\
    ],\
    yes: {\
        label: "Ignore Changes"\
    },\
    no: {\
        label: "Done",\
        action: {\
            type: "dynamic/run_command",\
            template: "trigger options set -1000$(hide_auto_messages)$(sneak_to_sit)$(disable_attack_indicator)$(disable_phantom_spawning)$(disable_keep_inventory)1"\
        }\
    }\
}

execute if score @s disable_keep_inventory matches 1 run data modify storage pandamium:local functions."pandamium:triggers/options/*".dialog.inputs[{key:"disable_keep_inventory"}].options[1].initial set value true
execute if score @s optn.disable_phantom_spawning matches 1 run data modify storage pandamium:local functions."pandamium:triggers/options/*".dialog.inputs[{key:"disable_phantom_spawning"}].options[1].initial set value true
execute if score @s disable_attack_indicator matches 1 run data modify storage pandamium:local functions."pandamium:triggers/options/*".dialog.inputs[{key:"disable_attack_indicator"}].options[1].initial set value true
execute if score @s hide_parkour_timer matches 1 run data modify storage pandamium:local functions."pandamium:triggers/options/*".dialog.inputs[{key:"hide_parkour_timer"}].options[1].initial set value true
execute if score @s sneak_to_sit matches 1 run data modify storage pandamium:local functions."pandamium:triggers/options/*".dialog.inputs[{key:"sneak_to_sit"}].options[1].initial set value true

execute if predicate pandamium:player/min_gameplay_perms/elder run data modify storage pandamium:local functions."pandamium:triggers/options/*".dialog.inputs[{key:"hide_auto_messages"}] merge value {type:"minecraft:single_option",key:"hide_auto_messages",label:{color:"aqua",text:"Tips/Reminders"},label_visible:true,options:[{id:"0",display:{translate:"options.on"}},{id:"1",display:{translate:"options.off"}}]}
execute if predicate pandamium:player/min_gameplay_perms/elder if score @s hide_auto_messages matches 1 run data modify storage pandamium:local functions."pandamium:triggers/options/*".dialog.inputs[{key:"hide_auto_messages"}].options[1].initial set value true

function pandamium:triggers/options/dialog/show with storage pandamium:local functions."pandamium:triggers/options/*"
