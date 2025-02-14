with open('vars.txt') as f:
    fields = []
    for line in f:
        fields.append(line.replace("\n","").split("="))
    for i in range(len(fields)):
        var     = fields[i]
        name  = var[0]
        value = var[1]
        with open('terraform_vars.txt', 'a') as f:
            f.write("""
            {
                name = """+'"{}"'.format(name)+"""
                value = """+'"{}"'.format(value.strip())+"""
            },""")