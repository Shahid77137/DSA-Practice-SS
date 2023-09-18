package com.dsa_questions;

public class Buying_Watches {

}

class WatchPriceCalculator{ 
    
	 String getWatchPrice(String watchType, int age, String gender){  
	   //code to computer and return the price of watch up to two decimal  places 
	   
	   double bill;
	   
	   if(watchType.equals("Titan")){
	       
	       double price = 7999 + 7999*0.20;
	       
	       if(age>=60 && gender.equals("female")){
	           
	           bill = price-(price*0.05);
	           
	       }else if(age>=60 && gender.equals("male")){
	           
	           bill = price-(price*0.03);
	           
	       }else if(age<60 && gender.equals("female")){
	           
	           bill = price-(price*0.02);
	           
	       }else {
	           
	           bill = price;
	           
	       }

	    
	       return ("The total bill amount is " + String.format("%.2f",bill));
	       
	   }else {
	       
	       double price = 10999 + 10999*0.26;
	       
	       if(age>=60 && gender.equals("female")){
	           
	           bill = price-(price*0.05);
	           
	       }else if(age>=60 && gender.equals("male")){
	           
	           bill = price-(price*0.03);
	           
	       }else if(age<60 && gender.equals("female")){
	           
	           bill = price-(price*0.02);
	           
	       }else {
	           
	           bill = price;
	           
	       }

	       return ("The total bill amount is " + String.format("%.2f",bill));
	   }
	   
	 } 
	}
