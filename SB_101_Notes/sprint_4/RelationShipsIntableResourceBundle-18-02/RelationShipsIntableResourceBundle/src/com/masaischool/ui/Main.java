package com.masaischool.ui;
import java.util.Scanner;

public class Main {
	static CategeryUI categoryUI;
	
	static void printAdminMenu(Scanner sc) {
		int choice = 0;
		do {
			System.out.println("1. Add new Category");
			System.out.println("2. View All Categories");
			System.out.println("3. Update a category");
			System.out.println("4. Delete a category");
			System.out.println("5. Search categories by Name");
			System.out.println("6. Search categories by Id");
			System.out.println("7. Add new Product");
			System.out.println("8. View All Categories");
			System.out.println("9. Update a Product");
			System.out.println("10. delete a Product");
			System.out.println("0. for Exit");
			System.out.print("Enter selection ");
			choice = sc.nextInt();
			switch(choice) {
				case 1:
					categoryUI.addCategory();
					break;
				case 2:
					
					break;
				case 3:
					
					break;
			}
		}while(choice != 0);
	}
	static void adminLogin(Scanner sc) {
		System.out.print("Enter username ");
		String username = sc.next();
		System.out.print("Enter password ");
		String password = sc.next();
		
		if(username.equalsIgnoreCase("admin") && password.equalsIgnoreCase("admin")) {
			printAdminMenu(sc);
		}else {
			System.out.println("Invalid Username and Password");
		}
	}
	
	static void customerLogin(Scanner sc) {
		System.out.print("Enter username ");
		String username = sc.next();
		System.out.print("Enter password ");
		String password = sc.next();
		
		//call DAO method to check if username and password is correct, from this method get object of User id
		//LoggedINUser.loggedInUserId = userId; this will make user id available to you everywhere
	}
	
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		categoryUI = new CategeryUI(sc);
		int choice = 0;
		do {
			System.out.println("1. Admin Login\n2. Customer Login\n0. Exit");
			choice = sc.nextInt();
			switch(choice) {
				case 1:
					adminLogin(sc);
					break;
				case 2:
					customerLogin(sc);
			}
		}while(choice != 0);
		
		
		sc.close();
	}
}
