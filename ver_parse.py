ver1 = input ('ver1 = ')
ver2 = input ('ver2 = ')
lst1=ver1.replace('.',' ').split()
lst2=ver2.replace('.',' ').split()
i=0
f = []
while i<4 :
   if (lst1[i] > lst2[i]) :
     f.append(1)
     i=i+1
   if (lst1[i] < lst2[i]) :
      f.append(2)
      i=i+1
   if (lst1[i] == lst2[i]) :
       f.append(0)
       i=i+1
if (f == [0,0,0,0]):
       print ("equal")
i=0
while (i<4):
    if(f[i]==2):
        print ('ver1 is elder than ver2')
        i=i+1
        break
    if(f[i]==1):
        print ('ver2 is elder than ver1')
        i=i+1
        break
#print (f)


