def substring_contained(longstring, substring):
    current_pos = 0
    for char in longstring:
        if char == substring[0]: #if yes, now check the rest of the substring
            substr_pos = 1
            for nextchar in longstring[current_pos+1:]:
                if nextchar != substring[substr_pos]:
                    break
                if substr_pos == (len(substring) -1):
                    return True
                substr_pos += 1

        current_pos += 1
    return False

longer = "longerthan"
longg = "gerth"

print(substring_contained(longer,longg))
