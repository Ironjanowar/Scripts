import sys
import os
import os.path as path

for File in sys.argv:
    if path.isfile(File) and not path.basename(__file__) == File:
        new_name = ""
        for letter in File:
            if letter == " ":
                new_name += "_"
            else:
                new_name += letter
        os.rename(File, new_name)
        print("File \"" + File + "\" renamed to \"" + new_name + "\"")
