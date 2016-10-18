import sys
import os
import os.path as path

letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz.áéíóúÁÉÍÓÚ1234567890"

for File in sys.argv:
    if path.isfile(File) and not path.basename(__file__) == File:
        new_name = ""
        for letter in File:
            if letter in letters:
                new_name += letter
            elif letter == " ":
                new_name += "_"

        os.rename(File, new_name)
        print("File \"" + File + "\" renamed to \"" + new_name + "\"")
