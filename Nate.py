name = "Nibedita"
n = len(name)

main_char = name[0] # N
mid_chars = name[-2:][::-1] # ta → at
end_char = name[:(n//2)][-1] # e

easier_verse = main_char + mid_chars + end_char
print(easier_verse) # Nate
