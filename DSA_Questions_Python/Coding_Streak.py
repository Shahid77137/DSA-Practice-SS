tc = int(input())

max_global = 0

curr_global = 0

max_inner = 0

for i in range(tc):
    
    strs = input()
    
    curr_inner = 0
    
    for chars in strs:
        
        if chars == "C":
            
            curr_global += 1
            
            curr_inner += 1
            
        else:
            
            max_global = max(max_global,curr_global)
            
            curr_global = 0
            
            max_inner = max(max_inner,curr_inner)
            
            curr_inner = 0
    
    max_inner = max(max_inner,curr_inner)
    
print(max_inner,max_global)






