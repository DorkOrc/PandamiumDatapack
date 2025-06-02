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
            key: "hide_parkour_timer",\
            label: "Show Parkour Timer",\
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
        }\
    ],\
    yes: {\
        label: "Ignore Changes"\
    },\
    no: {\
        label: "Done",\
        action: {\
            type: "dynamic/run_command",\
            template: "/trigger options set -1000$(sneak_to_sit)$(hide_parkour_timer)$(disable_attack_indicator)$(disable_phantom_spawning)$(disable_keep_inventory)1"\
        }\
    }\
}

execute if score @s disable_keep_inventory matches 1 run data modify storage pandamium:local functions."pandamium:triggers/options/*".dialog.inputs[{key:"disable_keep_inventory"}].options[1].initial set value 1b
execute if score @s optn.disable_phantom_spawning matches 1 run data modify storage pandamium:local functions."pandamium:triggers/options/*".dialog.inputs[{key:"disable_phantom_spawning"}].options[1].initial set value 1b
execute if score @s disable_attack_indicator matches 1 run data modify storage pandamium:local functions."pandamium:triggers/options/*".dialog.inputs[{key:"disable_attack_indicator"}].options[1].initial set value 1b
execute if score @s hide_parkour_timer matches 1 run data modify storage pandamium:local functions."pandamium:triggers/options/*".dialog.inputs[{key:"hide_parkour_timer"}].options[1].initial set value 1b
execute if score @s sneak_to_sit matches 1 run data modify storage pandamium:local functions."pandamium:triggers/options/*".dialog.inputs[{key:"sneak_to_sit"}].options[1].initial set value 1b

function pandamium:triggers/options/dialog/show with storage pandamium:local functions."pandamium:triggers/options/*"
