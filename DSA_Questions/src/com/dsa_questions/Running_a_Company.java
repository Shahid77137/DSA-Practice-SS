package com.dsa_questions;

public class Running_a_Company {
}


class employee{
	  // complete the class as mentioned in the problem statement
	  
	 int employee_id;
	 String name;
	 int salary;
	 boolean stock_options;
	 int vesting_period;
	 
	 public employee(int employee_id,String name,int salary,boolean stock_options,int vesting_period){
	     this.employee_id = employee_id;
	     this.name = name;
	     this.salary = salary;
	     this.stock_options = stock_options;
	     this.vesting_period = vesting_period;
	 }
	  
	  
	  public int employeeNumber(){
	      return employee_id;
	  }
	  
	  
	  public String name(){
	      return name;
	  }
	  
	  
	  public int salary(){
	      return salary;
	  }
	  
	  
	  public boolean stock_options(){
	      if(stock_options){
	          return true;
	      }else{
	          return false;
	      }
	  }
	  
	  
	  public int vesting_period(){
	      return vesting_period;
	  }
	  
	  
	}

	class company{
	  // complete the class as mentioned in the problem statement
	  
	  int size;
	  employee[] arr;
	  
	  public company(int size,employee[] arr){
	      this.size = size;
	      this.arr = arr;
	  }
	  
	  public void sortSalary(){
	      
	           for(int i =0;i<size;i++){
	          for(int j = 0;j<size-1;j++){
	              if(arr[j].salary > arr[j+1].salary){
	                  employee e = arr[j];
	                  arr[j] = arr[j+1];
	                  arr[j+1] = e;
	              }
	          }
	      }
	      
	  }
	  
	  
	  public void sortEmployeeId(){
	      
	      for(int i=0;i<size;i++){
	          for(int j=0;j<size-1;j++){
	              if(arr[j].employee_id > arr[j+1].employee_id){
	                  employee e = arr[j];
	                  arr[j] = arr[j+1];
	                  arr[j+1] = e;
	              }
	          }
	      }
	      
	  }
	  
	  
	  public void sortVestingPeriod(){
	      
	      for(int i=0;i<size;i++){
	          for(int j=0;j<size-1;j++){
	              if(arr[j].vesting_period < arr[j+1].vesting_period){
	                  employee e = arr[j];
	                  arr[j] = arr[j+1];
	                  arr[j+1] = e;
	              }
	          }
	      }
	      
	  }
	  
	  public void stockOrNot(int id){
	      
	      for(int i = 0;i<size;i++){
	          if(arr[i].employee_id == id){
	              if(arr[i].stock_options){
	                  System.out.println("Stock Granted to "+arr[i].name);
	              }
	              else{
	                  System.out.println("Stock not Granted to "+arr[i].name);
	              }
	              return;
	          }
	      }
	      System.out.println("Invalid Employee ID");
	  }
	  
	   int size(){
	      return size;
	  }
	  
	}

