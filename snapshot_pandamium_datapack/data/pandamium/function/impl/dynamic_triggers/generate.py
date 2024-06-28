with open("set_default_function_macro_arguments.mcfunction","w") as file:
    file.write("data modify storage pandamium.dynamic_triggers:data function_macros.post_lines set value {")
    file.write(",".join([f"\"{i}a\":\"return 0\",\"{i}b\":\"return 0\"" for i in range(0,2000)]))
    file.write("}\n\ndata modify storage pandamium.dynamic_triggers:data function_macros.lines set value {")
    file.write(",".join([f"{i}:\"return 0\"" for i in range(0,2000)]))
    file.write("}\n")


with open("function_macro_main.mcfunction","w") as file:
    file.write("\n".join([f"$$({i})" for i in range(0,2000)]))

with open("function_macro_post.mcfunction","w") as file:
    file.write("\n".join([f"$$({i}a)\n$$({i}b)" for i in range(0,2000)]))
