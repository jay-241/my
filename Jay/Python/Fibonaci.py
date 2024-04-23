def sorting(list):
    lenght = len(list)

    for i in range(0, lenght-1):
        for j in range(i+1, lenght):
            if(list[i] > list[j]):
                temp = list[j]
                list[j] = list[i]
                list[i] = temp
    
    print(list)

list = [100, 78 ,45, 90]


sorting(list)