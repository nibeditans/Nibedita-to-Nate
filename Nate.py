name = "Nibedita"
n = len(name)

# First character
main_char = name[0]

# Reverse the last two characters
mid_chars = name[-2:][::-1]

# --- Two equivalent ways to extract the middle character ---

# Method 1: Direct index (cleaner and more efficient)
end_char_index = name[n // 2 - 1]

# Method 2: Slice first half, then take last character
end_char_slice = name[: n // 2][-1]

# Both produce the same result
assert end_char_index == end_char_slice

# Use the index version for final construction
easier_verse = main_char + mid_chars + end_char_index

print(easier_verse)  # Nate
