#!/usr/bin/env/python
from jinja2 import Environment, FileSystemLoader
import os

envVersion = os.environ['VERSION']
envFileHash = os.environ['FILE_HASH']

file_loader = FileSystemLoader('templates')
env = Environment(loader=file_loader)

template = env.get_template('terrastate.rb.j2')

output = template.stream(
    version=envVersion, sha256=envFileHash).dump('terrastate.rb')
