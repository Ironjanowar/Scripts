#!/usr/bin/env python3

import sys
import os

for file_name in sys.argv:
    if ' ' in file_name:
        new_file_name = file_name.replace(' ', '_')
        os.rename(file_name, new_file_name)
        print("File \"" + file_name + "\" renamed to \"" + new_file_name + "\"")
print("Renaming finished")
