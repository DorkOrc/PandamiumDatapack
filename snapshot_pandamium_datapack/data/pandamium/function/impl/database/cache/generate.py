import os

#
with open("set_default_macro_arguments.mcfunction","w") as file:
    file.write(
        "data modify storage pandamium:cache macros.movement_trail set value {entries:[],upper_bound:0,lines:{"
        + ",".join(
            [
                f'{i}:"return 0"'
                for i in range(0,200)
            ]
        )
        + "}}\n"
    )
    
    file.write(
        "data modify storage pandamium:cache macros.projectile_trail set value {entries:[],upper_bound:0,lines:{"
        + ",".join(
            [
                f'{i}a:"return 0",{i}b:"return 0",{i}c:"return 0"'
                for i in range(0,200)
            ]
        )
        + "}}\n"
    )

    file.write(
        "data modify storage pandamium:cache macros.\"custom_dye.fixed\" set value {entries:[],upper_bound:0,lines:{"
        + ",".join(
            [
                f'{i}a:"return 0",{i}b:"return 0",{i}c:"return 0",{i}d:"return 0"'
                for i in range(0,200)
            ]
        )
        + "}}\n"
    )
    
    file.write(
        "data modify storage pandamium:cache macros.\"custom_dye.gradient\" set value {entries:[],upper_bound:0"
    )
    for frame in range(0,24):
        file.write(
            ",frame_%s_lines:{" % frame
            + ",".join(
                [
                    f'{i}a:"return 0",{i}b:"return 0",{i}c:"return 0",{i}d:"return 0"'
                    for i in range(0,200)
                ]
            )
            + "}"
        )
    file.write(
        "}\n"
    )

#
for i in range(10,200+1,10):
    with open(f'macros/movement_trail/{i}.mcfunction',"w") as file:
        file.write(
            "\n".join(
                [
                    f'$$({j})'
                    for j in range(0,i)
                ]
            )
        )

    with open(f'macros/projectile_trail/{i}.mcfunction',"w") as file:
        file.write(
            "\n".join(
                [
                    f'$$({j}a)\n$$({j}b)\n$$({j}c)'
                    for j in range(0,i)
                ]
            )
        )
    
    with open(f'macros/custom_dye.fixed/{i}.mcfunction',"w") as file:
        file.write(
            "\n".join(
                [
                    f'$$({j}a)\n$$({j}b)\n$$({j}c)\n$$({j}d)'
                    for j in range(0,i)
                ]
            )
        )

    for k in range(0,24):
        if not os.path.exists(f'macros/custom_dye.gradient/frame_{k}'):
            os.mkdir(f'macros/custom_dye.gradient/frame_{k}')

        with open(f'macros/custom_dye.gradient/frame_{k}/{i}.mcfunction',"w") as file:
            file.write(
                "\n".join(
                    [
                        f'$$({j}a)\n$$({j}b)\n$$({j}c)\n$$({j}d)'
                        for j in range(0,i)
                    ]
                )
            )

#
print("Done")
