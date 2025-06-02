data modify storage pandamium:local functions."pandamium:triggers/options/*".dialog set value \
{\
    type: "minecraft:confirmation",\
    title: "Pandamium Privacy & Accessibility Settings",\
    external_title: "Accessibility...",\
    inputs:[\
        {\
            type: "minecraft:single_option",\
            key: "pronouns_type",\
            label: "Preferred Pronouns",\
            options: [\
                {\
                    id: "0",\
                    display: "Unspecified"\
                },\
                {\
                    id: "1",\
                    display: "He/Him"\
                },\
                {\
                    id: "2",\
                    display: "She/Her"\
                },\
                {\
                    id: "3",\
                    display: "They/Them"\
                }\
            ]\
        },\
        {\
            type: "minecraft:single_option",\
            key: "disable_tpa_requests",\
            label: "Receive TPA Requests",\
            options: [\
                {\
                    id: "0",\
                    display: "All"\
                },\
                {\
                    id: "1",\
                    display: "None"\
                },\
                {\
                    id: "2",\
                    display: "All Except Guests"\
                }\
            ]\
        },\
        {\
            type: "minecraft:single_option",\
            key: "disable_receiving_mail",\
            label: "Receive Mail",\
            options: [\
                {\
                    id: "0",\
                    display: "All"\
                },\
                {\
                    id: "1",\
                    display: "None"\
                },\
                {\
                    id: "2",\
                    display: "All Except Guests"\
                }\
            ]\
        },\
        {\
            type: "minecraft:single_option",\
            key: "disable_dynamic_tpa_triggers",\
            label: "Dynamic TPA Triggers",\
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
            key: "disable_dynamic_home_triggers",\
            label: "Dynamic Home Triggers",\
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
            key: "enable_dynamic_mail_triggers",\
            label: "Dynamic Mail Triggers",\
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
            key: "enable_mini_block_help_trigger",\
            label: "Advancements Progress Trigger",\
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
            template: "/trigger options set -10$(pronouns_type)$(enable_mini_block_help_trigger)$(enable_dynamic_mail_triggers)$(disable_dynamic_home_triggers)$(disable_dynamic_tpa_triggers)$(disable_receiving_mail)$(disable_tpa_requests)2"\
        }\
    }\
}

execute if score @s disable_tpa_requests matches 1 run data modify storage pandamium:local functions."pandamium:triggers/options/*".dialog.inputs[{key:"disable_tpa_requests"}].options[1].initial set value 1b
execute if score @s disable_tpa_requests matches 2 run data modify storage pandamium:local functions."pandamium:triggers/options/*".dialog.inputs[{key:"disable_tpa_requests"}].options[2].initial set value 1b
execute if score @s disable_receiving_mail matches 1 run data modify storage pandamium:local functions."pandamium:triggers/options/*".dialog.inputs[{key:"disable_receiving_mail"}].options[1].initial set value 1b
execute if score @s disable_receiving_mail matches 2 run data modify storage pandamium:local functions."pandamium:triggers/options/*".dialog.inputs[{key:"disable_receiving_mail"}].options[2].initial set value 1b
execute if score @s optn.disable_dynamic_triggers.tpa_names matches 1 run data modify storage pandamium:local functions."pandamium:triggers/options/*".dialog.inputs[{key:"disable_dynamic_tpa_triggers"}].options[1].initial set value 1b
execute if score @s optn.disable_dynamic_triggers.home_names matches 1 run data modify storage pandamium:local functions."pandamium:triggers/options/*".dialog.inputs[{key:"disable_dynamic_home_triggers"}].options[1].initial set value 1b
execute if score @s optn.enable_dynamic_triggers.mail_names matches 1 run data modify storage pandamium:local functions."pandamium:triggers/options/*".dialog.inputs[{key:"enable_dynamic_mail_triggers"}].options[1].initial set value 1b
execute if score @s optn.enable_mini_block_help_trigger matches 1 run data modify storage pandamium:local functions."pandamium:triggers/options/*".dialog.inputs[{key:"enable_mini_block_help_trigger"}].options[1].initial set value 1b
execute if score @s pronouns_type matches 1 run data modify storage pandamium:local functions."pandamium:triggers/options/*".dialog.inputs[{key:"pronouns_type"}].options[1].initial set value 1b
execute if score @s pronouns_type matches 2 run data modify storage pandamium:local functions."pandamium:triggers/options/*".dialog.inputs[{key:"pronouns_type"}].options[2].initial set value 1b
execute if score @s pronouns_type matches 3 run data modify storage pandamium:local functions."pandamium:triggers/options/*".dialog.inputs[{key:"pronouns_type"}].options[3].initial set value 1b

function pandamium:triggers/options/dialog/show with storage pandamium:local functions."pandamium:triggers/options/*"
