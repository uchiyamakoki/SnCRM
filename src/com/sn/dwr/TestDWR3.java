package com.sn.dwr;

public class TestDWR3{
	public Person[] getPersons(){
		Person[] persons=new Person[3];
		persons[0]=new Person("张三", 20, true);
		persons[1]=new Person("李四", 21, false);
		persons[2]=new Person("王五", 22, true);
		return persons;
	}

}
