execute align xyz run summon text_display ~.5 ~.5 ~.5 {\
    Tags: ["pandamium.custom_entity.type.note_block_indicator","pandamium.custom_entity.root"],\
    text: '""',\
    billboard: "center",\
    background: 0,\
    brightness: {\
        block: 15,\
        sky: 15\
    },\
    transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.5f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.0f, 0.0f, 0.0f]},\
    Rotation: [0f,90f],\
    Passengers: [\
        {\
            id: "minecraft:marker",\
            Tags: ["pandamium.custom_entity.type.note_block_indicator","pandamium.custom_entity.brain","pandamium.ticking"],\
            data: {\
                custom_entity_type: "note_block_indicator"\
            }\
        }\
    ]\
}
