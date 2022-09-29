package com.taliun;
import java.util.Scanner;
public class DemoMain {
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        int a = Integer.parseInt(sc.next());
        double b = Double.parseDouble(sc.next());
        DemoExample obj = new DemoExample(3, "Fehmida", 24, 800000);
        // DemoMain obj = new DemoMain();
        System.out.println(obj.toString());
        // obj = null;
        // obj.setId(4);
        System.out.println(obj.getAge());
        // int Id = obj.id;
        sc.close();
    }
}
