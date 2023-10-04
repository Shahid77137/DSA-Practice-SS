def maxSubArraySum(self,arr,N):
        
        max = arr[0]
        
        sum = 0
        
        for i in range(len(arr)):
            
            sum = sum + arr[i]
            
            if sum > max:
                
                max = sum
                
            if sum < 0:
                
                sum = 0
                
        return max    