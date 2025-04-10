with open("set_default_macro_arguments.mcfunction","w") as file:
    file.write(
        "data modify storage pandamium.dynamic_triggers:data macros.post.lines set value {"
        + ",".join(
            [
                f'"{i}a":"return 0","{i}b":"return 0"' 
                for i in range(0,2000)
            ]
        )
        + "}\n\ndata modify storage pandamium.dynamic_triggers:data macros.main.lines set value {"
        + ",".join(
            [
                f'{i}:"return 0"'
                for i in range(0,2000)
            ]
        )
        + "}\n"
    )

for i in range(10,2000+1,10):
    with open(f'macros/main/{i}.mcfunction',"w") as file:
        file.write(
            "\n".join(
                [
                    f'$$({j})'
                    for j in range(0,i)
                ]
            )
        )

    with open(f'macros/post/{i}.mcfunction',"w") as file:
        file.write(
            "\n".join(
                [
                    f'$$({j}a)\n$$({j}b)'
                    for j in range(0,i)
                ]
            )
        )
