strs = input()

my_list1 = [] 

bag = ""

for i in range(len(strs)):
    
    my_list1.append(strs[i])
     
        
for j in range(len(my_list1)-1):
    
    if my_list1[j] == my_list1[j+1]:
        
        my_list1[j] = "0"
        
        my_list1[j+1] = "0"
    
for k in range(len(my_list1)):
    
    if my_list1[k] != "0":
        
        bag = bag+my_list1[k]
       

if bag == "":
    
    print("Empty String")
    
else:
    
    print(bag)

