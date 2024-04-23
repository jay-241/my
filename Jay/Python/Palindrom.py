def interchange(list):
    size = len(list)
    temp = list[0]
    list[0] = list[size-1]
    list[size-1] = temp


list = [1, 2, 3]
interchange(list)
print(list)