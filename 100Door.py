mylist = [0] * 100

d = 1
while d <= 100:         
    s = 1
    while s <= 100:     
        if s % d == 0:  
            mylist[s-1] = mylist[s-1] + 1   
        s = s + 1
    d = d + 1
s = 0
d = 0
opened = []
while s < 100:
    if mylist[s] % 2 == 1:
        opened.append(s+1) 
        d = d + 1
    s = s + 1

s = 0
print("Open Doors: ")
for s in range(0, 10):
    print(opened[s], end=' ')
    if s==len(range(0, 10)): print()
print('so many doors')