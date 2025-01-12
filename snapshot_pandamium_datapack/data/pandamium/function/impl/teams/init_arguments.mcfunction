data modify storage pandamium:local functions."pandamium:impl/teams/*" set value {\
    id: "UNKNOWN_ID",\
    tablist_sort_index: "UNKNOWN_SORT_INDEX",\
    team_color: "gray",\
    team_prefix: {\
        text: "Unranked | ",\
        hover_event: {\
            action: "show_text",\
            text: [\
                {\
                    text: "Shift+Click to insert User ID",\
                    color: "gray"\
                }\
            ]\
        },\
        insertion: "Missing User ID."\
    },\
    team_suffix_components: [],\
    team_suffix: {\
        text: ""\
    }\
}

execute store result storage pandamium:local functions."pandamium:impl/teams/*".id int 1 run scoreboard players get @s id
data modify storage pandamium:local functions."pandamium:impl/teams/*".team_prefix.insertion set string storage pandamium:local functions."pandamium:impl/teams/*".id

execute store result storage pandamium:local functions."pandamium:impl/teams/*".tablist_sort_index int 1 run scoreboard players get @s tablist_sort_index
