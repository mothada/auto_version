#!/bin/py
import json
import os
import sys
import shutil

with open("version.json",'r+') as f:
    data = json.load(f)
    data["version"]=" 1{0}".format(sys.argv[1])
    f.seek(0)
    json.dump(data, f, indent=4)
