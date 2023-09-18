package com.dsa_questions;

public class Eligible_for_Vote {

}

import java.util.*;

class NotEligibleForVote extends Exception{
    NotEligibleForVote(String msg){
        super(msg);
    }
}

class Validation{
 
public static void eligibleForVote(int age) throws NotEligibleForVote{
System.out.println("start of method");

if(age >= 18){
    System.out.println("You are Eligible for Vote.");
}else{
    throw new NotEligibleForVote("You are not Eligible for Vote.");
}


System.out.println("end of method");
}

}
