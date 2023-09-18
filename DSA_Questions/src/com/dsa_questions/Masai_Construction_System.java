package com.dsa_questions;


/*
 * Question
 * 
 * 
 * 
 */


class Masai_Construction_System{
	  //Declare 2 overloaded methods for calculating total cost
	  //the total bill cost should be up to two decimal places
		
		double totalArea;
		double labourCharges;
		double materialCharges;
		
		public Masai_Construction_System(){};
		
		public Masai_Construction_System(double totalArea,double labourCharges,double materialCharges){
		    this.totalArea = totalArea;
		    this.labourCharges = labourCharges;
		    this.materialCharges = materialCharges;
		}
		
		
		public void getTotalCost(double totalArea,double labourCharges){
		    
		    double total = totalArea*labourCharges;
		    System.out.println("Your total bill is:"+total+"0");
		    
		}
		
		
		public void getTotalCost(double totalArea,double labourCharges,double materialCharges){
		    
		    double total = totalArea*(labourCharges+materialCharges);
		    System.out.println("Your total bill is:"+total+"0");
		    
		}
		
	}

