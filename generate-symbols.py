#!/usr/bin/env python3
import unicodedata

ranges = []
with open("Blocks.txt", "r") as f:
    for line in f:
        if line.startswith("#") or len(line) <= 1:
            continue
        [rng, desc] = line.split(";")
        [start, end] = rng.split("..")
        ranges.append([int("0x" + start, 16), int("0x" + end, 16), desc.strip()])

for rng in ranges:
    for i in range(rng[0], rng[1] + 1):
        try:
            character = chr(i)
            name = unicodedata.name(character)
            print(
                (character + " " + name.lower()).ljust(60, " "),
                hex(i)[2:].upper().rjust(6, " "),
                rng[2],
            )
        except:
            continue
