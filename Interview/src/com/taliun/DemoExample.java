package com.taliun;

class DemoExample {
    private int id;
    private String name;
    private int age;
    private long salary;
    public DemoExample(){}
    public DemoExample(int id, String name, long salary, int age){
        this.id = id;
        this.salary = salary;
        this.name = name;
        this.age = age; 
    }

    public void setId(int id) {
        this.id = id;
    }
    public void setName(String name) {
        this.name = name;
    }
    public void setAge(int age) {
        this.age = age;
    }
    public void setSalary(long salary) {
        this.salary = salary;
    }

    
    public int getId() {
        return id;
    }
    public String getName() {
        return name;
    }
    public int getAge() {
        return age;
    }
    public long getSalary() {
        return salary;
    }
    @Override
    public String toString() {
        return "DemoExample [id=" + id + ", name=" + name + ", age=" + age + ", salary=" + salary + "]";
    }

    public void printId(){
        System.out.println("Id is " + this.id);
    }
    public void printName(){
        System.out.println("Name is " + this.id);
    }
    public void printAge(){
        System.out.println("Age is " + this.id);
    }
    public void printSalary(){
        System.out.println("Salary is " + this.id);
    }

    public static void main(String[] args){
        DemoExample obj1 = new DemoExample();
        DemoExample obj2 = new DemoExample(1, "Shahid", 600000, 22);
        obj1.setId(2);
        obj1.setName("Afridi");
        obj1.setAge(23);
        obj1.setSalary(900000);
        System.out.println(obj1.id);
        System.out.println(obj1.name);
        System.out.println(obj1.age);
        System.out.println(obj1.salary);
        System.out.println("\n");
        System.out.println(obj2.getId());
        System.out.println(obj2.getName());
        System.out.println(obj2.getAge());
        System.out.println(obj2.getSalary());

    }
}
