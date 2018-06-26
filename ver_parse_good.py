def parse(v1,v2):
    x1=v1.split(".")
    x2=v2.split(".")
    for (c1,c2) in zip(x1,x2):
       if c1==c2:
         continue
       if int(c1) > int(c2):
           return "the newest version is ver1"
       else:
           return "the newest version is ver2"

    if len(x1) ==len(x2):
            return "equal"
        
    if len(x1)  > len(x2):
            return "the newest version is ver1"
    else:
            return "the newest version is ver2"


s1= "3.4.8"
s2= "5.6.0"
s3="3.3.3"
s4="1"
s5="2.2"
s6="5.6.0.6.8.1"


