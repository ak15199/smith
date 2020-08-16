import os
from jinja2 import Environment, FileSystemLoader
import pypandoc
import click
import pathlib
import re


BEFORE="""{% extends 'layouts/main.html' %}
{% block content %}
"""
AFTER="""
{% endblock %}
"""

def block(name, string):
    return f"{{% block {name} %}}{string}{{% endblock {name} %}}"


def substitutions(path, html):

    blocks = ""

    # generate canoncial block
    blocks += re.sub(
            r".*<!-- Origin: (http.*) -->.*",
            block("canonical", "<link rel='canonical' href='\\1' />"),
            html,
            re.DOTALL)

    # generate type block
    if len(path.parts) > 1:
        blocks += block("type", path.parts[-2].capitalize())

    # generate title block
    blocks += re.sub(
            r".*<!-- Title: (.+) -->.*",
            block("title", "\\1"),
            html,
            re.DOTALL)

    return html, blocks


# add option for substitution
@click.command()
@click.option('--var', '-v', multiple=True)
@click.argument("infile")
def main(var, infile):
    """Generate or update a complete HTML page from the source
       .j2 or .md file provided
    """

    data = var

    try:
        j2_env = Environment(loader=FileSystemLoader("."),
                             trim_blocks=True)
    except Exception as e:
        print(str(e))
        exit(1)

    path = pathlib.Path(infile)
    if path.suffix == ".md":
        try:
            with open(infile, 'r') as read:
                html = read.read()
        except Exception as e:
            print(str(e))
            exit(1)

        html = pypandoc.convert_file(infile, to='html',
                format='markdown-blank_BEFORE_blockquote')
        html, blocks = substitutions(path, html)

        rendered = j2_env.from_string(BEFORE+html+AFTER+blocks).render(data)

    elif path.suffix == ".j2":
        rendered = j2_env.get_template(
            infile).render(data)

    else:
        print("Unsupported format,", path.suffix);
        exit(1)


    print(rendered)


if __name__ == '__main__':
    main()
