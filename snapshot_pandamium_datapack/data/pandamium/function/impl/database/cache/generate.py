with open("set_default_macro_arguments.mcfunction","w") as file:
    file.write(
        "data modify storage pandamium:cache macros.particles.lines set value {"
        + ",".join(
            [
                f'{i}:"return 0"'
                for i in range(0,200)
            ]
        )
        + "}\n"
    )
    
    file.write(
        "data modify storage pandamium:cache macros.\"custom_dye.fixed\".lines set value {"
        + ",".join(
            [
                f'{i}a:"return 0",{i}b:"return 0",{i}c:"return 0",{i}d:"return 0"'
                for i in range(0,200)
            ]
        )
        + "}\n"
    )

for i in range(10,200+1,10):
    with open(f'macros/particles/{i}.mcfunction',"w") as file:
        file.write(
            "\n".join(
                [
                    f'$$({j})'
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
