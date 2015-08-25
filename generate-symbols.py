#!/usr/bin/env python3
import unicodedata


for i in range(0, int('0x10000', 16)):
    try:
        character = chr(i)
        name = unicodedata.name(character)
        print(character, name.lower())
    except:
        continue
