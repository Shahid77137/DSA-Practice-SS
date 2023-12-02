def fun(arr):
    
    five = 0
    
    ten = 0
    
    for k in range(len(arr)):
        
        if arr[k] == 5:
            
            five = five + 1
            
        elif arr[k] == 10:
            
            if five >= 1:
                
                five = five - 1
                
                ten = ten + 1
                
            else:
                
                return "NO"
        
        elif arr[k] == 20:
            
            if ten >= 1 and five >= 1:
                
                ten = ten - 1
                
                five = five - 1
                
            elif five >= 3:
                
                five = five - 3
                
            else:
                
                return "NO"
                
    return "YES"                

tc = int(input())

for i in range(tc):
    
    n = int(input())
    
        
    arr = list(map(int,input().split()))

    a = fun(arr)
    
    print(a)